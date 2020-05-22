// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'send_otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SendOtpEventTearOff {
  const _$SendOtpEventTearOff();

  _SendOtp sendOtp() {
    return const _SendOtp();
  }

  _MobileNumberChanged mobileNumberChanged(String mobileNumber) {
    return _MobileNumberChanged(
      mobileNumber,
    );
  }

  _CountryCodeChanged countryCodeChanged(String code) {
    return _CountryCodeChanged(
      code,
    );
  }

  _SendError sendFailure(AuthFailure authFailure) {
    return _SendError(
      authFailure,
    );
  }

  SendSuccess sendSuccess() {
    return const SendSuccess();
  }
}

// ignore: unused_element
const $SendOtpEvent = _$SendOtpEventTearOff();

mixin _$SendOtpEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  });
}

abstract class $SendOtpEventCopyWith<$Res> {
  factory $SendOtpEventCopyWith(
          SendOtpEvent value, $Res Function(SendOtpEvent) then) =
      _$SendOtpEventCopyWithImpl<$Res>;
}

class _$SendOtpEventCopyWithImpl<$Res> implements $SendOtpEventCopyWith<$Res> {
  _$SendOtpEventCopyWithImpl(this._value, this._then);

  final SendOtpEvent _value;
  // ignore: unused_field
  final $Res Function(SendOtpEvent) _then;
}

abstract class _$SendOtpCopyWith<$Res> {
  factory _$SendOtpCopyWith(_SendOtp value, $Res Function(_SendOtp) then) =
      __$SendOtpCopyWithImpl<$Res>;
}

class __$SendOtpCopyWithImpl<$Res> extends _$SendOtpEventCopyWithImpl<$Res>
    implements _$SendOtpCopyWith<$Res> {
  __$SendOtpCopyWithImpl(_SendOtp _value, $Res Function(_SendOtp) _then)
      : super(_value, (v) => _then(v as _SendOtp));

  @override
  _SendOtp get _value => super._value as _SendOtp;
}

class _$_SendOtp implements _SendOtp {
  const _$_SendOtp();

  @override
  String toString() {
    return 'SendOtpEvent.sendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements SendOtpEvent {
  const factory _SendOtp() = _$_SendOtp;
}

abstract class _$MobileNumberChangedCopyWith<$Res> {
  factory _$MobileNumberChangedCopyWith(_MobileNumberChanged value,
          $Res Function(_MobileNumberChanged) then) =
      __$MobileNumberChangedCopyWithImpl<$Res>;
  $Res call({String mobileNumber});
}

class __$MobileNumberChangedCopyWithImpl<$Res>
    extends _$SendOtpEventCopyWithImpl<$Res>
    implements _$MobileNumberChangedCopyWith<$Res> {
  __$MobileNumberChangedCopyWithImpl(
      _MobileNumberChanged _value, $Res Function(_MobileNumberChanged) _then)
      : super(_value, (v) => _then(v as _MobileNumberChanged));

  @override
  _MobileNumberChanged get _value => super._value as _MobileNumberChanged;

  @override
  $Res call({
    Object mobileNumber = freezed,
  }) {
    return _then(_MobileNumberChanged(
      mobileNumber == freezed ? _value.mobileNumber : mobileNumber as String,
    ));
  }
}

class _$_MobileNumberChanged implements _MobileNumberChanged {
  const _$_MobileNumberChanged(this.mobileNumber)
      : assert(mobileNumber != null);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'SendOtpEvent.mobileNumberChanged(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MobileNumberChanged &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobileNumber, mobileNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mobileNumber);

  @override
  _$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith =>
      __$MobileNumberChangedCopyWithImpl<_MobileNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return mobileNumberChanged(mobileNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return mobileNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _MobileNumberChanged implements SendOtpEvent {
  const factory _MobileNumberChanged(String mobileNumber) =
      _$_MobileNumberChanged;

  String get mobileNumber;
  _$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith;
}

abstract class _$CountryCodeChangedCopyWith<$Res> {
  factory _$CountryCodeChangedCopyWith(
          _CountryCodeChanged value, $Res Function(_CountryCodeChanged) then) =
      __$CountryCodeChangedCopyWithImpl<$Res>;
  $Res call({String code});
}

class __$CountryCodeChangedCopyWithImpl<$Res>
    extends _$SendOtpEventCopyWithImpl<$Res>
    implements _$CountryCodeChangedCopyWith<$Res> {
  __$CountryCodeChangedCopyWithImpl(
      _CountryCodeChanged _value, $Res Function(_CountryCodeChanged) _then)
      : super(_value, (v) => _then(v as _CountryCodeChanged));

  @override
  _CountryCodeChanged get _value => super._value as _CountryCodeChanged;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(_CountryCodeChanged(
      code == freezed ? _value.code : code as String,
    ));
  }
}

class _$_CountryCodeChanged implements _CountryCodeChanged {
  const _$_CountryCodeChanged(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'SendOtpEvent.countryCodeChanged(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryCodeChanged &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @override
  _$CountryCodeChangedCopyWith<_CountryCodeChanged> get copyWith =>
      __$CountryCodeChangedCopyWithImpl<_CountryCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return countryCodeChanged(code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countryCodeChanged != null) {
      return countryCodeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return countryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countryCodeChanged != null) {
      return countryCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryCodeChanged implements SendOtpEvent {
  const factory _CountryCodeChanged(String code) = _$_CountryCodeChanged;

  String get code;
  _$CountryCodeChangedCopyWith<_CountryCodeChanged> get copyWith;
}

abstract class _$SendErrorCopyWith<$Res> {
  factory _$SendErrorCopyWith(
          _SendError value, $Res Function(_SendError) then) =
      __$SendErrorCopyWithImpl<$Res>;
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

class __$SendErrorCopyWithImpl<$Res> extends _$SendOtpEventCopyWithImpl<$Res>
    implements _$SendErrorCopyWith<$Res> {
  __$SendErrorCopyWithImpl(_SendError _value, $Res Function(_SendError) _then)
      : super(_value, (v) => _then(v as _SendError));

  @override
  _SendError get _value => super._value as _SendError;

  @override
  $Res call({
    Object authFailure = freezed,
  }) {
    return _then(_SendError(
      authFailure == freezed ? _value.authFailure : authFailure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get authFailure {
    if (_value.authFailure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.authFailure, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

class _$_SendError implements _SendError {
  const _$_SendError(this.authFailure) : assert(authFailure != null);

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'SendOtpEvent.sendFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendError &&
            (identical(other.authFailure, authFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authFailure, authFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authFailure);

  @override
  _$SendErrorCopyWith<_SendError> get copyWith =>
      __$SendErrorCopyWithImpl<_SendError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendFailure(authFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendFailure != null) {
      return sendFailure(authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class _SendError implements SendOtpEvent {
  const factory _SendError(AuthFailure authFailure) = _$_SendError;

  AuthFailure get authFailure;
  _$SendErrorCopyWith<_SendError> get copyWith;
}

abstract class $SendSuccessCopyWith<$Res> {
  factory $SendSuccessCopyWith(
          SendSuccess value, $Res Function(SendSuccess) then) =
      _$SendSuccessCopyWithImpl<$Res>;
}

class _$SendSuccessCopyWithImpl<$Res> extends _$SendOtpEventCopyWithImpl<$Res>
    implements $SendSuccessCopyWith<$Res> {
  _$SendSuccessCopyWithImpl(
      SendSuccess _value, $Res Function(SendSuccess) _then)
      : super(_value, (v) => _then(v as SendSuccess));

  @override
  SendSuccess get _value => super._value as SendSuccess;
}

class _$SendSuccess implements SendSuccess {
  const _$SendSuccess();

  @override
  String toString() {
    return 'SendOtpEvent.sendSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendOtp(),
    @required Result mobileNumberChanged(String mobileNumber),
    @required Result countryCodeChanged(String code),
    @required Result sendFailure(AuthFailure authFailure),
    @required Result sendSuccess(),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendOtp(),
    Result mobileNumberChanged(String mobileNumber),
    Result countryCodeChanged(String code),
    Result sendFailure(AuthFailure authFailure),
    Result sendSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendSuccess != null) {
      return sendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendOtp(_SendOtp value),
    @required Result mobileNumberChanged(_MobileNumberChanged value),
    @required Result countryCodeChanged(_CountryCodeChanged value),
    @required Result sendFailure(_SendError value),
    @required Result sendSuccess(SendSuccess value),
  }) {
    assert(sendOtp != null);
    assert(mobileNumberChanged != null);
    assert(countryCodeChanged != null);
    assert(sendFailure != null);
    assert(sendSuccess != null);
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendOtp(_SendOtp value),
    Result mobileNumberChanged(_MobileNumberChanged value),
    Result countryCodeChanged(_CountryCodeChanged value),
    Result sendFailure(_SendError value),
    Result sendSuccess(SendSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class SendSuccess implements SendOtpEvent {
  const factory SendSuccess() = _$SendSuccess;
}
