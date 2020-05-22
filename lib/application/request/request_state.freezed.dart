// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestStateTearOff {
  const _$RequestStateTearOff();

  _RequestState call(
      {bool isInitial,
      List<Request> requests,
      Option<Either<ProductFailure, Unit>> errorOption}) {
    return _RequestState(
      isInitial: isInitial,
      requests: requests,
      errorOption: errorOption,
    );
  }
}

// ignore: unused_element
const $RequestState = _$RequestStateTearOff();

mixin _$RequestState {
  bool get isInitial;
  List<Request> get requests;
  Option<Either<ProductFailure, Unit>> get errorOption;

  $RequestStateCopyWith<RequestState> get copyWith;
}

abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res>;
  $Res call(
      {bool isInitial,
      List<Request> requests,
      Option<Either<ProductFailure, Unit>> errorOption});
}

class _$RequestStateCopyWithImpl<$Res> implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  final RequestState _value;
  // ignore: unused_field
  final $Res Function(RequestState) _then;

  @override
  $Res call({
    Object isInitial = freezed,
    Object requests = freezed,
    Object errorOption = freezed,
  }) {
    return _then(_value.copyWith(
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      requests:
          requests == freezed ? _value.requests : requests as List<Request>,
      errorOption: errorOption == freezed
          ? _value.errorOption
          : errorOption as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

abstract class _$RequestStateCopyWith<$Res>
    implements $RequestStateCopyWith<$Res> {
  factory _$RequestStateCopyWith(
          _RequestState value, $Res Function(_RequestState) then) =
      __$RequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isInitial,
      List<Request> requests,
      Option<Either<ProductFailure, Unit>> errorOption});
}

class __$RequestStateCopyWithImpl<$Res> extends _$RequestStateCopyWithImpl<$Res>
    implements _$RequestStateCopyWith<$Res> {
  __$RequestStateCopyWithImpl(
      _RequestState _value, $Res Function(_RequestState) _then)
      : super(_value, (v) => _then(v as _RequestState));

  @override
  _RequestState get _value => super._value as _RequestState;

  @override
  $Res call({
    Object isInitial = freezed,
    Object requests = freezed,
    Object errorOption = freezed,
  }) {
    return _then(_RequestState(
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      requests:
          requests == freezed ? _value.requests : requests as List<Request>,
      errorOption: errorOption == freezed
          ? _value.errorOption
          : errorOption as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

class _$_RequestState implements _RequestState {
  const _$_RequestState({this.isInitial, this.requests, this.errorOption});

  @override
  final bool isInitial;
  @override
  final List<Request> requests;
  @override
  final Option<Either<ProductFailure, Unit>> errorOption;

  @override
  String toString() {
    return 'RequestState(isInitial: $isInitial, requests: $requests, errorOption: $errorOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestState &&
            (identical(other.isInitial, isInitial) ||
                const DeepCollectionEquality()
                    .equals(other.isInitial, isInitial)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.errorOption, errorOption) ||
                const DeepCollectionEquality()
                    .equals(other.errorOption, errorOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isInitial) ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(errorOption);

  @override
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      __$RequestStateCopyWithImpl<_RequestState>(this, _$identity);
}

abstract class _RequestState implements RequestState {
  const factory _RequestState(
      {bool isInitial,
      List<Request> requests,
      Option<Either<ProductFailure, Unit>> errorOption}) = _$_RequestState;

  @override
  bool get isInitial;
  @override
  List<Request> get requests;
  @override
  Option<Either<ProductFailure, Unit>> get errorOption;
  @override
  _$RequestStateCopyWith<_RequestState> get copyWith;
}
