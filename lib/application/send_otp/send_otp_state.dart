import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import 'package:smileshare/presentation/auth/constants.dart';

part 'send_otp_state.freezed.dart';

@freezed
abstract class SendOtpState with _$SendOtpState {
  const factory SendOtpState({
    @required MobileNumber mobileNumber,
    @required bool autoValidate,
    @required String countryCode,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
    @required bool isSubmitting,
  }) = _SendOtpState;

  factory SendOtpState.initial() => SendOtpState(
        autoValidate: false,
        countryCode: AuthConstants.initialCountryCode,
        failureOrSuccessOption: none(),
        isSubmitting: false,
        mobileNumber: MobileNumber(AuthConstants.initialCountryCode),
      );
}
