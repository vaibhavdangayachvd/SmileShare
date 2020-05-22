// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'verify_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VerifyOtpStateTearOff {
  const _$VerifyOtpStateTearOff();

  _VerifyOtpState call(
      {@required String otp,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      @required bool isSubmitting}) {
    return _VerifyOtpState(
      otp: otp,
      failureOrSuccessOption: failureOrSuccessOption,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $VerifyOtpState = _$VerifyOtpStateTearOff();

mixin _$VerifyOtpState {
  String get otp;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  bool get isSubmitting;

  $VerifyOtpStateCopyWith<VerifyOtpState> get copyWith;
}

abstract class $VerifyOtpStateCopyWith<$Res> {
  factory $VerifyOtpStateCopyWith(
          VerifyOtpState value, $Res Function(VerifyOtpState) then) =
      _$VerifyOtpStateCopyWithImpl<$Res>;
  $Res call(
      {String otp,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool isSubmitting});
}

class _$VerifyOtpStateCopyWithImpl<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  _$VerifyOtpStateCopyWithImpl(this._value, this._then);

  final VerifyOtpState _value;
  // ignore: unused_field
  final $Res Function(VerifyOtpState) _then;

  @override
  $Res call({
    Object otp = freezed,
    Object failureOrSuccessOption = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed ? _value.otp : otp as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

abstract class _$VerifyOtpStateCopyWith<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  factory _$VerifyOtpStateCopyWith(
          _VerifyOtpState value, $Res Function(_VerifyOtpState) then) =
      __$VerifyOtpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String otp,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool isSubmitting});
}

class __$VerifyOtpStateCopyWithImpl<$Res>
    extends _$VerifyOtpStateCopyWithImpl<$Res>
    implements _$VerifyOtpStateCopyWith<$Res> {
  __$VerifyOtpStateCopyWithImpl(
      _VerifyOtpState _value, $Res Function(_VerifyOtpState) _then)
      : super(_value, (v) => _then(v as _VerifyOtpState));

  @override
  _VerifyOtpState get _value => super._value as _VerifyOtpState;

  @override
  $Res call({
    Object otp = freezed,
    Object failureOrSuccessOption = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_VerifyOtpState(
      otp: otp == freezed ? _value.otp : otp as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_VerifyOtpState implements _VerifyOtpState {
  const _$_VerifyOtpState(
      {@required this.otp,
      @required this.failureOrSuccessOption,
      @required this.isSubmitting})
      : assert(otp != null),
        assert(failureOrSuccessOption != null),
        assert(isSubmitting != null);

  @override
  final String otp;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'VerifyOtpState(otp: $otp, failureOrSuccessOption: $failureOrSuccessOption, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyOtpState &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$VerifyOtpStateCopyWith<_VerifyOtpState> get copyWith =>
      __$VerifyOtpStateCopyWithImpl<_VerifyOtpState>(this, _$identity);
}

abstract class _VerifyOtpState implements VerifyOtpState {
  const factory _VerifyOtpState(
      {@required String otp,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      @required bool isSubmitting}) = _$_VerifyOtpState;

  @override
  String get otp;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  bool get isSubmitting;
  @override
  _$VerifyOtpStateCopyWith<_VerifyOtpState> get copyWith;
}
