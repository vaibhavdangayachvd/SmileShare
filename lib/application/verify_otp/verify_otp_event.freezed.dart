// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'verify_otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VerifyOtpEventTearOff {
  const _$VerifyOtpEventTearOff();

  _VerifyOtp verifyOtp() {
    return const _VerifyOtp();
  }

  _OtpChanged otpChanged(String otp) {
    return _OtpChanged(
      otp,
    );
  }

  _ResendOtp resendOtp(String mobileNumber) {
    return _ResendOtp(
      mobileNumber,
    );
  }

  _VerifyFailure sendFailure(AuthFailure authFailure) {
    return _VerifyFailure(
      authFailure,
    );
  }
}

// ignore: unused_element
const $VerifyOtpEvent = _$VerifyOtpEventTearOff();

mixin _$VerifyOtpEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyOtp(),
    @required Result otpChanged(String otp),
    @required Result resendOtp(String mobileNumber),
    @required Result sendFailure(AuthFailure authFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyOtp(),
    Result otpChanged(String otp),
    Result resendOtp(String mobileNumber),
    Result sendFailure(AuthFailure authFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyOtp(_VerifyOtp value),
    @required Result otpChanged(_OtpChanged value),
    @required Result resendOtp(_ResendOtp value),
    @required Result sendFailure(_VerifyFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyOtp(_VerifyOtp value),
    Result otpChanged(_OtpChanged value),
    Result resendOtp(_ResendOtp value),
    Result sendFailure(_VerifyFailure value),
    @required Result orElse(),
  });
}

abstract class $VerifyOtpEventCopyWith<$Res> {
  factory $VerifyOtpEventCopyWith(
          VerifyOtpEvent value, $Res Function(VerifyOtpEvent) then) =
      _$VerifyOtpEventCopyWithImpl<$Res>;
}

class _$VerifyOtpEventCopyWithImpl<$Res>
    implements $VerifyOtpEventCopyWith<$Res> {
  _$VerifyOtpEventCopyWithImpl(this._value, this._then);

  final VerifyOtpEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyOtpEvent) _then;
}

abstract class _$VerifyOtpCopyWith<$Res> {
  factory _$VerifyOtpCopyWith(
          _VerifyOtp value, $Res Function(_VerifyOtp) then) =
      __$VerifyOtpCopyWithImpl<$Res>;
}

class __$VerifyOtpCopyWithImpl<$Res> extends _$VerifyOtpEventCopyWithImpl<$Res>
    implements _$VerifyOtpCopyWith<$Res> {
  __$VerifyOtpCopyWithImpl(_VerifyOtp _value, $Res Function(_VerifyOtp) _then)
      : super(_value, (v) => _then(v as _VerifyOtp));

  @override
  _VerifyOtp get _value => super._value as _VerifyOtp;
}

class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp();

  @override
  String toString() {
    return 'VerifyOtpEvent.verifyOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerifyOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyOtp(),
    @required Result otpChanged(String otp),
    @required Result resendOtp(String mobileNumber),
    @required Result sendFailure(AuthFailure authFailure),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyOtp(),
    Result otpChanged(String otp),
    Result resendOtp(String mobileNumber),
    Result sendFailure(AuthFailure authFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyOtp(_VerifyOtp value),
    @required Result otpChanged(_OtpChanged value),
    @required Result resendOtp(_ResendOtp value),
    @required Result sendFailure(_VerifyFailure value),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyOtp(_VerifyOtp value),
    Result otpChanged(_OtpChanged value),
    Result resendOtp(_ResendOtp value),
    Result sendFailure(_VerifyFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements VerifyOtpEvent {
  const factory _VerifyOtp() = _$_VerifyOtp;
}

abstract class _$OtpChangedCopyWith<$Res> {
  factory _$OtpChangedCopyWith(
          _OtpChanged value, $Res Function(_OtpChanged) then) =
      __$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otp});
}

class __$OtpChangedCopyWithImpl<$Res> extends _$VerifyOtpEventCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(
      _OtpChanged _value, $Res Function(_OtpChanged) _then)
      : super(_value, (v) => _then(v as _OtpChanged));

  @override
  _OtpChanged get _value => super._value as _OtpChanged;

  @override
  $Res call({
    Object otp = freezed,
  }) {
    return _then(_OtpChanged(
      otp == freezed ? _value.otp : otp as String,
    ));
  }
}

class _$_OtpChanged implements _OtpChanged {
  const _$_OtpChanged(this.otp) : assert(otp != null);

  @override
  final String otp;

  @override
  String toString() {
    return 'VerifyOtpEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpChanged &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @override
  _$OtpChangedCopyWith<_OtpChanged> get copyWith =>
      __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyOtp(),
    @required Result otpChanged(String otp),
    @required Result resendOtp(String mobileNumber),
    @required Result sendFailure(AuthFailure authFailure),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyOtp(),
    Result otpChanged(String otp),
    Result resendOtp(String mobileNumber),
    Result sendFailure(AuthFailure authFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyOtp(_VerifyOtp value),
    @required Result otpChanged(_OtpChanged value),
    @required Result resendOtp(_ResendOtp value),
    @required Result sendFailure(_VerifyFailure value),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyOtp(_VerifyOtp value),
    Result otpChanged(_OtpChanged value),
    Result resendOtp(_ResendOtp value),
    Result sendFailure(_VerifyFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements VerifyOtpEvent {
  const factory _OtpChanged(String otp) = _$_OtpChanged;

  String get otp;
  _$OtpChangedCopyWith<_OtpChanged> get copyWith;
}

abstract class _$ResendOtpCopyWith<$Res> {
  factory _$ResendOtpCopyWith(
          _ResendOtp value, $Res Function(_ResendOtp) then) =
      __$ResendOtpCopyWithImpl<$Res>;
  $Res call({String mobileNumber});
}

class __$ResendOtpCopyWithImpl<$Res> extends _$VerifyOtpEventCopyWithImpl<$Res>
    implements _$ResendOtpCopyWith<$Res> {
  __$ResendOtpCopyWithImpl(_ResendOtp _value, $Res Function(_ResendOtp) _then)
      : super(_value, (v) => _then(v as _ResendOtp));

  @override
  _ResendOtp get _value => super._value as _ResendOtp;

  @override
  $Res call({
    Object mobileNumber = freezed,
  }) {
    return _then(_ResendOtp(
      mobileNumber == freezed ? _value.mobileNumber : mobileNumber as String,
    ));
  }
}

class _$_ResendOtp implements _ResendOtp {
  const _$_ResendOtp(this.mobileNumber) : assert(mobileNumber != null);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'VerifyOtpEvent.resendOtp(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResendOtp &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobileNumber, mobileNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mobileNumber);

  @override
  _$ResendOtpCopyWith<_ResendOtp> get copyWith =>
      __$ResendOtpCopyWithImpl<_ResendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyOtp(),
    @required Result otpChanged(String otp),
    @required Result resendOtp(String mobileNumber),
    @required Result sendFailure(AuthFailure authFailure),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return resendOtp(mobileNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyOtp(),
    Result otpChanged(String otp),
    Result resendOtp(String mobileNumber),
    Result sendFailure(AuthFailure authFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOtp != null) {
      return resendOtp(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyOtp(_VerifyOtp value),
    @required Result otpChanged(_OtpChanged value),
    @required Result resendOtp(_ResendOtp value),
    @required Result sendFailure(_VerifyFailure value),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyOtp(_VerifyOtp value),
    Result otpChanged(_OtpChanged value),
    Result resendOtp(_ResendOtp value),
    Result sendFailure(_VerifyFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements VerifyOtpEvent {
  const factory _ResendOtp(String mobileNumber) = _$_ResendOtp;

  String get mobileNumber;
  _$ResendOtpCopyWith<_ResendOtp> get copyWith;
}

abstract class _$VerifyFailureCopyWith<$Res> {
  factory _$VerifyFailureCopyWith(
          _VerifyFailure value, $Res Function(_VerifyFailure) then) =
      __$VerifyFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

class __$VerifyFailureCopyWithImpl<$Res>
    extends _$VerifyOtpEventCopyWithImpl<$Res>
    implements _$VerifyFailureCopyWith<$Res> {
  __$VerifyFailureCopyWithImpl(
      _VerifyFailure _value, $Res Function(_VerifyFailure) _then)
      : super(_value, (v) => _then(v as _VerifyFailure));

  @override
  _VerifyFailure get _value => super._value as _VerifyFailure;

  @override
  $Res call({
    Object authFailure = freezed,
  }) {
    return _then(_VerifyFailure(
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

class _$_VerifyFailure implements _VerifyFailure {
  const _$_VerifyFailure(this.authFailure) : assert(authFailure != null);

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'VerifyOtpEvent.sendFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyFailure &&
            (identical(other.authFailure, authFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authFailure, authFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authFailure);

  @override
  _$VerifyFailureCopyWith<_VerifyFailure> get copyWith =>
      __$VerifyFailureCopyWithImpl<_VerifyFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyOtp(),
    @required Result otpChanged(String otp),
    @required Result resendOtp(String mobileNumber),
    @required Result sendFailure(AuthFailure authFailure),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return sendFailure(authFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyOtp(),
    Result otpChanged(String otp),
    Result resendOtp(String mobileNumber),
    Result sendFailure(AuthFailure authFailure),
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
    @required Result verifyOtp(_VerifyOtp value),
    @required Result otpChanged(_OtpChanged value),
    @required Result resendOtp(_ResendOtp value),
    @required Result sendFailure(_VerifyFailure value),
  }) {
    assert(verifyOtp != null);
    assert(otpChanged != null);
    assert(resendOtp != null);
    assert(sendFailure != null);
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyOtp(_VerifyOtp value),
    Result otpChanged(_OtpChanged value),
    Result resendOtp(_ResendOtp value),
    Result sendFailure(_VerifyFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class _VerifyFailure implements VerifyOtpEvent {
  const factory _VerifyFailure(AuthFailure authFailure) = _$_VerifyFailure;

  AuthFailure get authFailure;
  _$VerifyFailureCopyWith<_VerifyFailure> get copyWith;
}
