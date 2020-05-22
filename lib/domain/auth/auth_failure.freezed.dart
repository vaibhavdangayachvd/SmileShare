// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _ServerFailure serverFailure() {
    return const _ServerFailure();
  }

  _IncorrectOtp incorrectOtp() {
    return const _IncorrectOtp();
  }

  _InternalError internalError() {
    return const _InternalError();
  }

  _QuotaExceeded quotaExceeded() {
    return const _QuotaExceeded();
  }

  _CodeExpired codeExpired() {
    return const _CodeExpired();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
}

class __$ServerFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;
}

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'AuthFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements AuthFailure {
  const factory _ServerFailure() = _$_ServerFailure;
}

abstract class _$IncorrectOtpCopyWith<$Res> {
  factory _$IncorrectOtpCopyWith(
          _IncorrectOtp value, $Res Function(_IncorrectOtp) then) =
      __$IncorrectOtpCopyWithImpl<$Res>;
}

class __$IncorrectOtpCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$IncorrectOtpCopyWith<$Res> {
  __$IncorrectOtpCopyWithImpl(
      _IncorrectOtp _value, $Res Function(_IncorrectOtp) _then)
      : super(_value, (v) => _then(v as _IncorrectOtp));

  @override
  _IncorrectOtp get _value => super._value as _IncorrectOtp;
}

class _$_IncorrectOtp implements _IncorrectOtp {
  const _$_IncorrectOtp();

  @override
  String toString() {
    return 'AuthFailure.incorrectOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IncorrectOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return incorrectOtp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectOtp != null) {
      return incorrectOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return incorrectOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectOtp != null) {
      return incorrectOtp(this);
    }
    return orElse();
  }
}

abstract class _IncorrectOtp implements AuthFailure {
  const factory _IncorrectOtp() = _$_IncorrectOtp;
}

abstract class _$InternalErrorCopyWith<$Res> {
  factory _$InternalErrorCopyWith(
          _InternalError value, $Res Function(_InternalError) then) =
      __$InternalErrorCopyWithImpl<$Res>;
}

class __$InternalErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InternalErrorCopyWith<$Res> {
  __$InternalErrorCopyWithImpl(
      _InternalError _value, $Res Function(_InternalError) _then)
      : super(_value, (v) => _then(v as _InternalError));

  @override
  _InternalError get _value => super._value as _InternalError;
}

class _$_InternalError implements _InternalError {
  const _$_InternalError();

  @override
  String toString() {
    return 'AuthFailure.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return internalError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError implements AuthFailure {
  const factory _InternalError() = _$_InternalError;
}

abstract class _$QuotaExceededCopyWith<$Res> {
  factory _$QuotaExceededCopyWith(
          _QuotaExceeded value, $Res Function(_QuotaExceeded) then) =
      __$QuotaExceededCopyWithImpl<$Res>;
}

class __$QuotaExceededCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$QuotaExceededCopyWith<$Res> {
  __$QuotaExceededCopyWithImpl(
      _QuotaExceeded _value, $Res Function(_QuotaExceeded) _then)
      : super(_value, (v) => _then(v as _QuotaExceeded));

  @override
  _QuotaExceeded get _value => super._value as _QuotaExceeded;
}

class _$_QuotaExceeded implements _QuotaExceeded {
  const _$_QuotaExceeded();

  @override
  String toString() {
    return 'AuthFailure.quotaExceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QuotaExceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return quotaExceeded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotaExceeded != null) {
      return quotaExceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return quotaExceeded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotaExceeded != null) {
      return quotaExceeded(this);
    }
    return orElse();
  }
}

abstract class _QuotaExceeded implements AuthFailure {
  const factory _QuotaExceeded() = _$_QuotaExceeded;
}

abstract class _$CodeExpiredCopyWith<$Res> {
  factory _$CodeExpiredCopyWith(
          _CodeExpired value, $Res Function(_CodeExpired) then) =
      __$CodeExpiredCopyWithImpl<$Res>;
}

class __$CodeExpiredCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$CodeExpiredCopyWith<$Res> {
  __$CodeExpiredCopyWithImpl(
      _CodeExpired _value, $Res Function(_CodeExpired) _then)
      : super(_value, (v) => _then(v as _CodeExpired));

  @override
  _CodeExpired get _value => super._value as _CodeExpired;
}

class _$_CodeExpired implements _CodeExpired {
  const _$_CodeExpired();

  @override
  String toString() {
    return 'AuthFailure.codeExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CodeExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result incorrectOtp(),
    @required Result internalError(),
    @required Result quotaExceeded(),
    @required Result codeExpired(),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return codeExpired();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result incorrectOtp(),
    Result internalError(),
    Result quotaExceeded(),
    Result codeExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeExpired != null) {
      return codeExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result incorrectOtp(_IncorrectOtp value),
    @required Result internalError(_InternalError value),
    @required Result quotaExceeded(_QuotaExceeded value),
    @required Result codeExpired(_CodeExpired value),
  }) {
    assert(serverFailure != null);
    assert(incorrectOtp != null);
    assert(internalError != null);
    assert(quotaExceeded != null);
    assert(codeExpired != null);
    return codeExpired(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result incorrectOtp(_IncorrectOtp value),
    Result internalError(_InternalError value),
    Result quotaExceeded(_QuotaExceeded value),
    Result codeExpired(_CodeExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeExpired != null) {
      return codeExpired(this);
    }
    return orElse();
  }
}

abstract class _CodeExpired implements AuthFailure {
  const factory _CodeExpired() = _$_CodeExpired;
}
