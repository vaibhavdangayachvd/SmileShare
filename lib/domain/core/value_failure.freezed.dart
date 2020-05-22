// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidPhoneNumber invalidPhoneNumber() {
    return const _InvalidPhoneNumber();
  }

  _ShortLength shortLength(int minimumLength) {
    return _ShortLength(
      minimumLength,
    );
  }

  _LongLength longLength(int maximumLength) {
    return _LongLength(
      maximumLength,
    );
  }

  _InvalidCount invalidCount() {
    return const _InvalidCount();
  }

  _InvalidUrl invalidUrl() {
    return const _InvalidUrl();
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res>;
}

class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure _value;
  // ignore: unused_field
  final $Res Function(ValueFailure) _then;
}

abstract class _$InvalidPhoneNumberCopyWith<$Res> {
  factory _$InvalidPhoneNumberCopyWith(
          _InvalidPhoneNumber value, $Res Function(_InvalidPhoneNumber) then) =
      __$InvalidPhoneNumberCopyWithImpl<$Res>;
}

class __$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidPhoneNumberCopyWith<$Res> {
  __$InvalidPhoneNumberCopyWithImpl(
      _InvalidPhoneNumber _value, $Res Function(_InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber));

  @override
  _InvalidPhoneNumber get _value => super._value as _InvalidPhoneNumber;
}

class _$_InvalidPhoneNumber implements _InvalidPhoneNumber {
  const _$_InvalidPhoneNumber();

  @override
  String toString() {
    return 'ValueFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber implements ValueFailure {
  const factory _InvalidPhoneNumber() = _$_InvalidPhoneNumber;
}

abstract class _$ShortLengthCopyWith<$Res> {
  factory _$ShortLengthCopyWith(
          _ShortLength value, $Res Function(_ShortLength) then) =
      __$ShortLengthCopyWithImpl<$Res>;
  $Res call({int minimumLength});
}

class __$ShortLengthCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$ShortLengthCopyWith<$Res> {
  __$ShortLengthCopyWithImpl(
      _ShortLength _value, $Res Function(_ShortLength) _then)
      : super(_value, (v) => _then(v as _ShortLength));

  @override
  _ShortLength get _value => super._value as _ShortLength;

  @override
  $Res call({
    Object minimumLength = freezed,
  }) {
    return _then(_ShortLength(
      minimumLength == freezed ? _value.minimumLength : minimumLength as int,
    ));
  }
}

class _$_ShortLength implements _ShortLength {
  const _$_ShortLength(this.minimumLength) : assert(minimumLength != null);

  @override
  final int minimumLength;

  @override
  String toString() {
    return 'ValueFailure.shortLength(minimumLength: $minimumLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortLength &&
            (identical(other.minimumLength, minimumLength) ||
                const DeepCollectionEquality()
                    .equals(other.minimumLength, minimumLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(minimumLength);

  @override
  _$ShortLengthCopyWith<_ShortLength> get copyWith =>
      __$ShortLengthCopyWithImpl<_ShortLength>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return shortLength(minimumLength);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortLength != null) {
      return shortLength(minimumLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class _ShortLength implements ValueFailure {
  const factory _ShortLength(int minimumLength) = _$_ShortLength;

  int get minimumLength;
  _$ShortLengthCopyWith<_ShortLength> get copyWith;
}

abstract class _$LongLengthCopyWith<$Res> {
  factory _$LongLengthCopyWith(
          _LongLength value, $Res Function(_LongLength) then) =
      __$LongLengthCopyWithImpl<$Res>;
  $Res call({int maximumLength});
}

class __$LongLengthCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$LongLengthCopyWith<$Res> {
  __$LongLengthCopyWithImpl(
      _LongLength _value, $Res Function(_LongLength) _then)
      : super(_value, (v) => _then(v as _LongLength));

  @override
  _LongLength get _value => super._value as _LongLength;

  @override
  $Res call({
    Object maximumLength = freezed,
  }) {
    return _then(_LongLength(
      maximumLength == freezed ? _value.maximumLength : maximumLength as int,
    ));
  }
}

class _$_LongLength implements _LongLength {
  const _$_LongLength(this.maximumLength) : assert(maximumLength != null);

  @override
  final int maximumLength;

  @override
  String toString() {
    return 'ValueFailure.longLength(maximumLength: $maximumLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LongLength &&
            (identical(other.maximumLength, maximumLength) ||
                const DeepCollectionEquality()
                    .equals(other.maximumLength, maximumLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(maximumLength);

  @override
  _$LongLengthCopyWith<_LongLength> get copyWith =>
      __$LongLengthCopyWithImpl<_LongLength>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return longLength(maximumLength);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longLength != null) {
      return longLength(maximumLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return longLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longLength != null) {
      return longLength(this);
    }
    return orElse();
  }
}

abstract class _LongLength implements ValueFailure {
  const factory _LongLength(int maximumLength) = _$_LongLength;

  int get maximumLength;
  _$LongLengthCopyWith<_LongLength> get copyWith;
}

abstract class _$InvalidCountCopyWith<$Res> {
  factory _$InvalidCountCopyWith(
          _InvalidCount value, $Res Function(_InvalidCount) then) =
      __$InvalidCountCopyWithImpl<$Res>;
}

class __$InvalidCountCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidCountCopyWith<$Res> {
  __$InvalidCountCopyWithImpl(
      _InvalidCount _value, $Res Function(_InvalidCount) _then)
      : super(_value, (v) => _then(v as _InvalidCount));

  @override
  _InvalidCount get _value => super._value as _InvalidCount;
}

class _$_InvalidCount implements _InvalidCount {
  const _$_InvalidCount();

  @override
  String toString() {
    return 'ValueFailure.invalidCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidCount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCount != null) {
      return invalidCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidCount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCount != null) {
      return invalidCount(this);
    }
    return orElse();
  }
}

abstract class _InvalidCount implements ValueFailure {
  const factory _InvalidCount() = _$_InvalidCount;
}

abstract class _$InvalidUrlCopyWith<$Res> {
  factory _$InvalidUrlCopyWith(
          _InvalidUrl value, $Res Function(_InvalidUrl) then) =
      __$InvalidUrlCopyWithImpl<$Res>;
}

class __$InvalidUrlCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidUrlCopyWith<$Res> {
  __$InvalidUrlCopyWithImpl(
      _InvalidUrl _value, $Res Function(_InvalidUrl) _then)
      : super(_value, (v) => _then(v as _InvalidUrl));

  @override
  _InvalidUrl get _value => super._value as _InvalidUrl;
}

class _$_InvalidUrl implements _InvalidUrl {
  const _$_InvalidUrl();

  @override
  String toString() {
    return 'ValueFailure.invalidUrl()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidUrl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPhoneNumber(),
    @required Result shortLength(int minimumLength),
    @required Result longLength(int maximumLength),
    @required Result invalidCount(),
    @required Result invalidUrl(),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidUrl();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPhoneNumber(),
    Result shortLength(int minimumLength),
    Result longLength(int maximumLength),
    Result invalidCount(),
    Result invalidUrl(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUrl != null) {
      return invalidUrl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPhoneNumber(_InvalidPhoneNumber value),
    @required Result shortLength(_ShortLength value),
    @required Result longLength(_LongLength value),
    @required Result invalidCount(_InvalidCount value),
    @required Result invalidUrl(_InvalidUrl value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(shortLength != null);
    assert(longLength != null);
    assert(invalidCount != null);
    assert(invalidUrl != null);
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPhoneNumber(_InvalidPhoneNumber value),
    Result shortLength(_ShortLength value),
    Result longLength(_LongLength value),
    Result invalidCount(_InvalidCount value),
    Result invalidUrl(_InvalidUrl value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class _InvalidUrl implements ValueFailure {
  const factory _InvalidUrl() = _$_InvalidUrl;
}
