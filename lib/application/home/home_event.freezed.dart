// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _HomeEvent updateData(List<Category> categories) {
    return _HomeEvent(
      categories,
    );
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  List<Category> get categories;

  $HomeEventCopyWith<HomeEvent> get copyWith;
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
    ));
  }
}

abstract class _$HomeEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$HomeEventCopyWith(
          _HomeEvent value, $Res Function(_HomeEvent) then) =
      __$HomeEventCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categories});
}

class __$HomeEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$HomeEventCopyWith<$Res> {
  __$HomeEventCopyWithImpl(_HomeEvent _value, $Res Function(_HomeEvent) _then)
      : super(_value, (v) => _then(v as _HomeEvent));

  @override
  _HomeEvent get _value => super._value as _HomeEvent;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_HomeEvent(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

class _$_HomeEvent implements _HomeEvent {
  const _$_HomeEvent(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'HomeEvent.updateData(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeEvent &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  _$HomeEventCopyWith<_HomeEvent> get copyWith =>
      __$HomeEventCopyWithImpl<_HomeEvent>(this, _$identity);
}

abstract class _HomeEvent implements HomeEvent {
  const factory _HomeEvent(List<Category> categories) = _$_HomeEvent;

  @override
  List<Category> get categories;
  @override
  _$HomeEventCopyWith<_HomeEvent> get copyWith;
}
