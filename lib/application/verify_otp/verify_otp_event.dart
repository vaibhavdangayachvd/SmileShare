import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';

part 'verify_otp_event.freezed.dart';

@freezed
abstract class VerifyOtpEvent with _$VerifyOtpEvent {
  const factory VerifyOtpEvent.verifyOtp() = _VerifyOtp;

  const factory VerifyOtpEvent.otpChanged(String otp) = _OtpChanged;

  const factory VerifyOtpEvent.resendOtp(String mobileNumber) = _ResendOtp;

  const factory VerifyOtpEvent.sendFailure(AuthFailure authFailure) =
      _VerifyFailure;
}
