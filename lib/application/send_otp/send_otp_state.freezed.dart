// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'send_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SendOtpStateTearOff {
  const _$SendOtpStateTearOff();

  _SendOtpState call(
      {@required MobileNumber mobileNumber,
      @required bool autoValidate,
      @required String countryCode,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      @required bool isSubmitting}) {
    return _SendOtpState(
      mobileNumber: mobileNumber,
      autoValidate: autoValidate,
      countryCode: countryCode,
      failureOrSuccessOption: failureOrSuccessOption,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $SendOtpState = _$SendOtpStateTearOff();

mixin _$SendOtpState {
  MobileNumber get mobileNumber;
  bool get autoValidate;
  String get countryCode;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  bool get isSubmitting;

  $SendOtpStateCopyWith<SendOtpState> get copyWith;
}

abstract class $SendOtpStateCopyWith<$Res> {
  factory $SendOtpStateCopyWith(
          SendOtpState value, $Res Function(SendOtpState) then) =
      _$SendOtpStateCopyWithImpl<$Res>;
  $Res call(
      {MobileNumber mobileNumber,
      bool autoValidate,
      String countryCode,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool isSubmitting});
}

class _$SendOtpStateCopyWithImpl<$Res> implements $SendOtpStateCopyWith<$Res> {
  _$SendOtpStateCopyWithImpl(this._value, this._then);

  final SendOtpState _value;
  // ignore: unused_field
  final $Res Function(SendOtpState) _then;

  @override
  $Res call({
    Object mobileNumber = freezed,
    Object autoValidate = freezed,
    Object countryCode = freezed,
    Object failureOrSuccessOption = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber as MobileNumber,
      autoValidate:
          autoValidate == freezed ? _value.autoValidate : autoValidate as bool,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

abstract class _$SendOtpStateCopyWith<$Res>
    implements $SendOtpStateCopyWith<$Res> {
  factory _$SendOtpStateCopyWith(
          _SendOtpState value, $Res Function(_SendOtpState) then) =
      __$SendOtpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MobileNumber mobileNumber,
      bool autoValidate,
      String countryCode,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool isSubmitting});
}

class __$SendOtpStateCopyWithImpl<$Res> extends _$SendOtpStateCopyWithImpl<$Res>
    implements _$SendOtpStateCopyWith<$Res> {
  __$SendOtpStateCopyWithImpl(
      _SendOtpState _value, $Res Function(_SendOtpState) _then)
      : super(_value, (v) => _then(v as _SendOtpState));

  @override
  _SendOtpState get _value => super._value as _SendOtpState;

  @override
  $Res call({
    Object mobileNumber = freezed,
    Object autoValidate = freezed,
    Object countryCode = freezed,
    Object failureOrSuccessOption = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_SendOtpState(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber as MobileNumber,
      autoValidate:
          autoValidate == freezed ? _value.autoValidate : autoValidate as bool,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_SendOtpState implements _SendOtpState {
  const _$_SendOtpState(
      {@required this.mobileNumber,
      @required this.autoValidate,
      @required this.countryCode,
      @required this.failureOrSuccessOption,
      @required this.isSubmitting})
      : assert(mobileNumber != null),
        assert(autoValidate != null),
        assert(countryCode != null),
        assert(failureOrSuccessOption != null),
        assert(isSubmitting != null);

  @override
  final MobileNumber mobileNumber;
  @override
  final bool autoValidate;
  @override
  final String countryCode;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SendOtpState(mobileNumber: $mobileNumber, autoValidate: $autoValidate, countryCode: $countryCode, failureOrSuccessOption: $failureOrSuccessOption, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendOtpState &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobileNumber, mobileNumber)) &&
            (identical(other.autoValidate, autoValidate) ||
                const DeepCollectionEquality()
                    .equals(other.autoValidate, autoValidate)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
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
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(autoValidate) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$SendOtpStateCopyWith<_SendOtpState> get copyWith =>
      __$SendOtpStateCopyWithImpl<_SendOtpState>(this, _$identity);
}

abstract class _SendOtpState implements SendOtpState {
  const factory _SendOtpState(
      {@required MobileNumber mobileNumber,
      @required bool autoValidate,
      @required String countryCode,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      @required bool isSubmitting}) = _$_SendOtpState;

  @override
  MobileNumber get mobileNumber;
  @override
  bool get autoValidate;
  @override
  String get countryCode;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  bool get isSubmitting;
  @override
  _$SendOtpStateCopyWith<_SendOtpState> get copyWith;
}
