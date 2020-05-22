import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';

part 'verify_otp_state.freezed.dart';

@freezed
abstract class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState({
    @required String otp,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
    @required bool isSubmitting,
  }) = _VerifyOtpState;

  factory VerifyOtpState.initial() =>
      VerifyOtpState(
        otp: '',
        failureOrSuccessOption: none(),
        isSubmitting: false,
      );
}
