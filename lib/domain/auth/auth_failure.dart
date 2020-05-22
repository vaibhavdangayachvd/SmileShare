import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverFailure() = _ServerFailure;

  const factory AuthFailure.incorrectOtp() = _IncorrectOtp;

  const factory AuthFailure.internalError() = _InternalError;

  const factory AuthFailure.quotaExceeded() = _QuotaExceeded;

  const factory AuthFailure.codeExpired() = _CodeExpired;
}
