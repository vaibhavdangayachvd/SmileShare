import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';

part 'send_otp_event.freezed.dart';

@freezed
abstract class SendOtpEvent with _$SendOtpEvent {
  const factory SendOtpEvent.sendOtp() = _SendOtp;

  const factory SendOtpEvent.mobileNumberChanged(String mobileNumber) =
      _MobileNumberChanged;

  const factory SendOtpEvent.countryCodeChanged(String code) =
      _CountryCodeChanged;

  const factory SendOtpEvent.sendFailure(AuthFailure authFailure) = _SendError;

  const factory SendOtpEvent.sendSuccess() = SendSuccess;
}
