import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';
import 'package:smileshare/domain/auth/i_auth_facade.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import './bloc.dart';

@injectable
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final IAuthFacade authFacade;

  VerifyOtpBloc(this.authFacade);

  @override
  VerifyOtpState get initialState => VerifyOtpState.initial();

  @override
  Stream<VerifyOtpState> mapEventToState(
    VerifyOtpEvent event,
  ) async* {
    yield* event.when(
      verifyOtp: () async* {
        yield* _handelVerifyOtp();
      },
      sendFailure: (AuthFailure authFailure) async* {
        yield* _sendFailure(authFailure);
      },
      otpChanged: (String otp) async* {
        yield* _handelOtpChanged(otp);
      },
      resendOtp: (String mobileNumber) async* {
        yield* _handelResendOtp(mobileNumber);
      },
    );
  }

  Stream<VerifyOtpState> _handelVerifyOtp() async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final result = await authFacade.verifyOtp(otp: state.otp);
    yield state.copyWith(
        isSubmitting: false, failureOrSuccessOption: some(result));
  }

  Stream<VerifyOtpState> _sendFailure(AuthFailure authFailure) async* {
    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: some(left(authFailure)),
    );
  }

  Stream<VerifyOtpState> _handelOtpChanged(String otp) async* {
    yield state.copyWith(
      otp: otp.trim(),
      failureOrSuccessOption: none(),
    );
  }

  Stream<VerifyOtpState> _handelResendOtp(String mobile) async* {
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );

    final mobileNumber = MobileNumber(mobile);

    void handelError(AuthFailure authFailure) {
      add(VerifyOtpEvent.sendFailure(authFailure));
    }

    void handelSuccess() {}

    if (mobileNumber.isValid) {
      await authFacade.sendOtp(
        mobileNumber: mobileNumber,
        timeout: const Duration(),
        handelError: handelError,
        handelSuccess: handelSuccess,
      );
    } else {
      yield state.copyWith(
        failureOrSuccessOption: some(left(const AuthFailure.internalError())),
      );
    }
  }
}
