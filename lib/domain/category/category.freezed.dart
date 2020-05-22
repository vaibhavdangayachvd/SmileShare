// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {@required UniqueId id,
      @required ValidName categoryName,
      @required ValidUrl imageUrl,
      @required Count requestCount}) {
    return _Category(
      id: id,
      categoryName: categoryName,
      imageUrl: imageUrl,
      requestCount: requestCount,
    );
  }
}

// ignore: unused_element
const $Category = _$CategoryTearOff();

mixin _$Category {
  UniqueId get id;
  ValidName get categoryName;
  ValidUrl get imageUrl;
  Count get requestCount;

  $CategoryCopyWith<Category> get copyWith;
}

abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ValidName categoryName,
      ValidUrl imageUrl,
      Count requestCount});
}

class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object id = freezed,
    Object categoryName = freezed,
    Object imageUrl = freezed,
    Object requestCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as ValidName,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ValidUrl,
      requestCount:
          requestCount == freezed ? _value.requestCount : requestCount as Count,
    ));
  }
}

abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ValidName categoryName,
      ValidUrl imageUrl,
      Count requestCount});
}

class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object id = freezed,
    Object categoryName = freezed,
    Object imageUrl = freezed,
    Object requestCount = freezed,
  }) {
    return _then(_Category(
      id: id == freezed ? _value.id : id as UniqueId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as ValidName,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ValidUrl,
      requestCount:
          requestCount == freezed ? _value.requestCount : requestCount as Count,
    ));
  }
}

class _$_Category implements _Category {
  const _$_Category(
      {@required this.id,
      @required this.categoryName,
      @required this.imageUrl,
      @required this.requestCount})
      : assert(id != null),
        assert(categoryName != null),
        assert(imageUrl != null),
        assert(requestCount != null);

  @override
  final UniqueId id;
  @override
  final ValidName categoryName;
  @override
  final ValidUrl imageUrl;
  @override
  final Count requestCount;

  @override
  String toString() {
    return 'Category(id: $id, categoryName: $categoryName, imageUrl: $imageUrl, requestCount: $requestCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.requestCount, requestCount) ||
                const DeepCollectionEquality()
                    .equals(other.requestCount, requestCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(requestCount);

  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);
}

abstract class _Category implements Category {
  const factory _Category(
      {@required UniqueId id,
      @required ValidName categoryName,
      @required ValidUrl imageUrl,
      @required Count requestCount}) = _$_Category;

  @override
  UniqueId get id;
  @override
  ValidName get categoryName;
  @override
  ValidUrl get imageUrl;
  @override
  Count get requestCount;
  @override
  _$CategoryCopyWith<_Category> get copyWith;
}
