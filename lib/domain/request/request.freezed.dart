// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestTearOff {
  const _$RequestTearOff();

  _Request call(
      {@required UniqueId id,
      @required ValidDescription description,
      @required ValidName title,
      @required DateTime creationTime,
      @required DateTime completionTime,
      @required Count requiredAmount,
      @required Count currentAmount,
      @required ValidUrl imageUrl,
      @required String videoUrl,
      @required bool completed,
      @required bool verified}) {
    return _Request(
      id: id,
      description: description,
      title: title,
      creationTime: creationTime,
      completionTime: completionTime,
      requiredAmount: requiredAmount,
      currentAmount: currentAmount,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
      completed: completed,
      verified: verified,
    );
  }
}

// ignore: unused_element
const $Request = _$RequestTearOff();

mixin _$Request {
  UniqueId get id;
  ValidDescription get description;
  ValidName get title;
  DateTime get creationTime;
  DateTime get completionTime;
  Count get requiredAmount;
  Count get currentAmount;
  ValidUrl get imageUrl;
  String get videoUrl;
  bool get completed;
  bool get verified;

  $RequestCopyWith<Request> get copyWith;
}

abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ValidDescription description,
      ValidName title,
      DateTime creationTime,
      DateTime completionTime,
      Count requiredAmount,
      Count currentAmount,
      ValidUrl imageUrl,
      String videoUrl,
      bool completed,
      bool verified});
}

class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object title = freezed,
    Object creationTime = freezed,
    Object completionTime = freezed,
    Object requiredAmount = freezed,
    Object currentAmount = freezed,
    Object imageUrl = freezed,
    Object videoUrl = freezed,
    Object completed = freezed,
    Object verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      description: description == freezed
          ? _value.description
          : description as ValidDescription,
      title: title == freezed ? _value.title : title as ValidName,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      completionTime: completionTime == freezed
          ? _value.completionTime
          : completionTime as DateTime,
      requiredAmount: requiredAmount == freezed
          ? _value.requiredAmount
          : requiredAmount as Count,
      currentAmount: currentAmount == freezed
          ? _value.currentAmount
          : currentAmount as Count,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ValidUrl,
      videoUrl: videoUrl == freezed ? _value.videoUrl : videoUrl as String,
      completed: completed == freezed ? _value.completed : completed as bool,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ValidDescription description,
      ValidName title,
      DateTime creationTime,
      DateTime completionTime,
      Count requiredAmount,
      Count currentAmount,
      ValidUrl imageUrl,
      String videoUrl,
      bool completed,
      bool verified});
}

class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object title = freezed,
    Object creationTime = freezed,
    Object completionTime = freezed,
    Object requiredAmount = freezed,
    Object currentAmount = freezed,
    Object imageUrl = freezed,
    Object videoUrl = freezed,
    Object completed = freezed,
    Object verified = freezed,
  }) {
    return _then(_Request(
      id: id == freezed ? _value.id : id as UniqueId,
      description: description == freezed
          ? _value.description
          : description as ValidDescription,
      title: title == freezed ? _value.title : title as ValidName,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      completionTime: completionTime == freezed
          ? _value.completionTime
          : completionTime as DateTime,
      requiredAmount: requiredAmount == freezed
          ? _value.requiredAmount
          : requiredAmount as Count,
      currentAmount: currentAmount == freezed
          ? _value.currentAmount
          : currentAmount as Count,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ValidUrl,
      videoUrl: videoUrl == freezed ? _value.videoUrl : videoUrl as String,
      completed: completed == freezed ? _value.completed : completed as bool,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

class _$_Request implements _Request {
  const _$_Request(
      {@required this.id,
      @required this.description,
      @required this.title,
      @required this.creationTime,
      @required this.completionTime,
      @required this.requiredAmount,
      @required this.currentAmount,
      @required this.imageUrl,
      @required this.videoUrl,
      @required this.completed,
      @required this.verified})
      : assert(id != null),
        assert(description != null),
        assert(title != null),
        assert(creationTime != null),
        assert(completionTime != null),
        assert(requiredAmount != null),
        assert(currentAmount != null),
        assert(imageUrl != null),
        assert(videoUrl != null),
        assert(completed != null),
        assert(verified != null);

  @override
  final UniqueId id;
  @override
  final ValidDescription description;
  @override
  final ValidName title;
  @override
  final DateTime creationTime;
  @override
  final DateTime completionTime;
  @override
  final Count requiredAmount;
  @override
  final Count currentAmount;
  @override
  final ValidUrl imageUrl;
  @override
  final String videoUrl;
  @override
  final bool completed;
  @override
  final bool verified;

  @override
  String toString() {
    return 'Request(id: $id, description: $description, title: $title, creationTime: $creationTime, completionTime: $completionTime, requiredAmount: $requiredAmount, currentAmount: $currentAmount, imageUrl: $imageUrl, videoUrl: $videoUrl, completed: $completed, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.completionTime, completionTime) ||
                const DeepCollectionEquality()
                    .equals(other.completionTime, completionTime)) &&
            (identical(other.requiredAmount, requiredAmount) ||
                const DeepCollectionEquality()
                    .equals(other.requiredAmount, requiredAmount)) &&
            (identical(other.currentAmount, currentAmount) ||
                const DeepCollectionEquality()
                    .equals(other.currentAmount, currentAmount)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(completionTime) ^
      const DeepCollectionEquality().hash(requiredAmount) ^
      const DeepCollectionEquality().hash(currentAmount) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(verified);

  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request implements Request {
  const factory _Request(
      {@required UniqueId id,
      @required ValidDescription description,
      @required ValidName title,
      @required DateTime creationTime,
      @required DateTime completionTime,
      @required Count requiredAmount,
      @required Count currentAmount,
      @required ValidUrl imageUrl,
      @required String videoUrl,
      @required bool completed,
      @required bool verified}) = _$_Request;

  @override
  UniqueId get id;
  @override
  ValidDescription get description;
  @override
  ValidName get title;
  @override
  DateTime get creationTime;
  @override
  DateTime get completionTime;
  @override
  Count get requiredAmount;
  @override
  Count get currentAmount;
  @override
  ValidUrl get imageUrl;
  @override
  String get videoUrl;
  @override
  bool get completed;
  @override
  bool get verified;
  @override
  _$RequestCopyWith<_Request> get copyWith;
}
