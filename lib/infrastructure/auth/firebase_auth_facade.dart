import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';
import 'package:smileshare/domain/auth/auth_states.dart';
import 'package:smileshare/domain/auth/i_auth_facade.dart';
import 'package:smileshare/domain/core/function_handlers.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import 'package:smileshare/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as:IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth authInstance;
  String verificationId;
  int forceResendToken;

  FirebaseAuthFacade(this.authInstance);

  @override
  Future<void> sendOtp({
    @required MobileNumber mobileNumber,
    @required Duration timeout,
    @required HandelError<AuthFailure> handelError,
    @required HandelSuccess handelSuccess,
  }) async {
    try {
      final mobile = mobileNumber.value.fold((l) => throw l, (r) => r);

      void verificationCompleted(AuthCredential authCredential) {
        handelSuccess();
      }

      void codeSend(String verID, [int resendToken]) {
        verificationId = verID;
        forceResendToken = resendToken;
        handelSuccess();
      }

      void codeAutoRetrievalTimeout(String verID) {
        verificationId = verID;
      }

      void verificationFailed(AuthException authException) {
        if (authException.code == 'QUOTA_EXCEEDED_ERR') {
          handelError(const AuthFailure.quotaExceeded());
        } else {
          handelError(const AuthFailure.serverFailure());
        }
      }

      authInstance.verifyPhoneNumber(
        phoneNumber: mobile,
        timeout: timeout,
        forceResendingToken: forceResendToken,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSend,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      );
    } catch (e) {
      handelError(const AuthFailure.internalError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyOtp({
    @required String otp,
  }) async {
    try {
      final authCredential = PhoneAuthProvider.getCredential(
          verificationId: verificationId, smsCode: otp);
      await authInstance.signInWithCredential(authCredential);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_INVALID_VERIFICATION_CODE') {
        return left(const AuthFailure.incorrectOtp());
      } else if (e.code == 'ERROR_SESSION_EXPIRED') {
        return left(const AuthFailure.codeExpired());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    } catch (e) {
      return left(const AuthFailure.internalError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    try {
      authInstance.signOut();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Stream<AuthStates> get authStates {
    return authInstance.onAuthStateChanged.map(
      (user) => user != null
          ? AuthStates.loggedIn(user.toDomain())
          : const AuthStates.loggedOut(),
    );
  }
}
