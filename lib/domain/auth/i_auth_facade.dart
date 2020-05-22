import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';
import 'package:smileshare/domain/core/function_handlers.dart';
import 'package:smileshare/domain/auth/auth_states.dart';
import 'package:smileshare/domain/core/value_objects.dart';

abstract class IAuthFacade {
  Future<void> sendOtp({
    @required MobileNumber mobileNumber,
    @required Duration timeout,
    @required HandelError<AuthFailure> handelError,
    @required HandelSuccess handelSuccess,
  });

  Future<Either<AuthFailure, Unit>> verifyOtp({
    @required String otp,
  });

  Stream<AuthStates> get authStates;

  Future<Either<AuthFailure, Unit>> logout();
}
