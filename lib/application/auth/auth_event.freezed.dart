// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthStateChanged authStateChanged(AuthStates currentAuthState) {
    return _AuthStateChanged(
      currentAuthState,
    );
  }

  _Logout logout() {
    return const _Logout();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authStateChanged(AuthStates currentAuthState),
    @required Result logout(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authStateChanged(AuthStates currentAuthState),
    Result logout(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authStateChanged(_AuthStateChanged value),
    @required Result logout(_Logout value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authStateChanged(_AuthStateChanged value),
    Result logout(_Logout value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$AuthStateChangedCopyWith<$Res> {
  factory _$AuthStateChangedCopyWith(
          _AuthStateChanged value, $Res Function(_AuthStateChanged) then) =
      __$AuthStateChangedCopyWithImpl<$Res>;
  $Res call({AuthStates currentAuthState});

  $AuthStatesCopyWith<$Res> get currentAuthState;
}

class __$AuthStateChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthStateChangedCopyWith<$Res> {
  __$AuthStateChangedCopyWithImpl(
      _AuthStateChanged _value, $Res Function(_AuthStateChanged) _then)
      : super(_value, (v) => _then(v as _AuthStateChanged));

  @override
  _AuthStateChanged get _value => super._value as _AuthStateChanged;

  @override
  $Res call({
    Object currentAuthState = freezed,
  }) {
    return _then(_AuthStateChanged(
      currentAuthState == freezed
          ? _value.currentAuthState
          : currentAuthState as AuthStates,
    ));
  }

  @override
  $AuthStatesCopyWith<$Res> get currentAuthState {
    if (_value.currentAuthState == null) {
      return null;
    }
    return $AuthStatesCopyWith<$Res>(_value.currentAuthState, (value) {
      return _then(_value.copyWith(currentAuthState: value));
    });
  }
}

class _$_AuthStateChanged implements _AuthStateChanged {
  const _$_AuthStateChanged(this.currentAuthState)
      : assert(currentAuthState != null);

  @override
  final AuthStates currentAuthState;

  @override
  String toString() {
    return 'AuthEvent.authStateChanged(currentAuthState: $currentAuthState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStateChanged &&
            (identical(other.currentAuthState, currentAuthState) ||
                const DeepCollectionEquality()
                    .equals(other.currentAuthState, currentAuthState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentAuthState);

  @override
  _$AuthStateChangedCopyWith<_AuthStateChanged> get copyWith =>
      __$AuthStateChangedCopyWithImpl<_AuthStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authStateChanged(AuthStates currentAuthState),
    @required Result logout(),
  }) {
    assert(authStateChanged != null);
    assert(logout != null);
    return authStateChanged(currentAuthState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authStateChanged(AuthStates currentAuthState),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authStateChanged != null) {
      return authStateChanged(currentAuthState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authStateChanged(_AuthStateChanged value),
    @required Result logout(_Logout value),
  }) {
    assert(authStateChanged != null);
    assert(logout != null);
    return authStateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authStateChanged(_AuthStateChanged value),
    Result logout(_Logout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authStateChanged != null) {
      return authStateChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthStateChanged implements AuthEvent {
  const factory _AuthStateChanged(AuthStates currentAuthState) =
      _$_AuthStateChanged;

  AuthStates get currentAuthState;
  _$AuthStateChangedCopyWith<_AuthStateChanged> get copyWith;
}

abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

class __$LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authStateChanged(AuthStates currentAuthState),
    @required Result logout(),
  }) {
    assert(authStateChanged != null);
    assert(logout != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authStateChanged(AuthStates currentAuthState),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authStateChanged(_AuthStateChanged value),
    @required Result logout(_Logout value),
  }) {
    assert(authStateChanged != null);
    assert(logout != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authStateChanged(_AuthStateChanged value),
    Result logout(_Logout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}
