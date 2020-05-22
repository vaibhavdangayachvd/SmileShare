// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestEventTearOff {
  const _$RequestEventTearOff();

  _SubscribeTo subscribeTo(String id) {
    return _SubscribeTo(
      id,
    );
  }

  _UpdateData updateData(List<Request> currentData) {
    return _UpdateData(
      currentData,
    );
  }

  _AddRequest addRequest(
      String categoryId, String title, String description, int amount) {
    return _AddRequest(
      categoryId,
      title,
      description,
      amount,
    );
  }

  _Donate donate(
      {String categoryId, String requestId, int newAmount, bool isComplete}) {
    return _Donate(
      categoryId: categoryId,
      requestId: requestId,
      newAmount: newAmount,
      isComplete: isComplete,
    );
  }
}

// ignore: unused_element
const $RequestEvent = _$RequestEventTearOff();

mixin _$RequestEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result subscribeTo(String id),
    @required Result updateData(List<Request> currentData),
    @required
        Result addRequest(
            String categoryId, String title, String description, int amount),
    @required
        Result donate(String categoryId, String requestId, int newAmount,
            bool isComplete),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result subscribeTo(String id),
    Result updateData(List<Request> currentData),
    Result addRequest(
        String categoryId, String title, String description, int amount),
    Result donate(
        String categoryId, String requestId, int newAmount, bool isComplete),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result subscribeTo(_SubscribeTo value),
    @required Result updateData(_UpdateData value),
    @required Result addRequest(_AddRequest value),
    @required Result donate(_Donate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result subscribeTo(_SubscribeTo value),
    Result updateData(_UpdateData value),
    Result addRequest(_AddRequest value),
    Result donate(_Donate value),
    @required Result orElse(),
  });
}

abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res>;
}

class _$RequestEventCopyWithImpl<$Res> implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  final RequestEvent _value;
  // ignore: unused_field
  final $Res Function(RequestEvent) _then;
}

abstract class _$SubscribeToCopyWith<$Res> {
  factory _$SubscribeToCopyWith(
          _SubscribeTo value, $Res Function(_SubscribeTo) then) =
      __$SubscribeToCopyWithImpl<$Res>;
  $Res call({String id});
}

class __$SubscribeToCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
    implements _$SubscribeToCopyWith<$Res> {
  __$SubscribeToCopyWithImpl(
      _SubscribeTo _value, $Res Function(_SubscribeTo) _then)
      : super(_value, (v) => _then(v as _SubscribeTo));

  @override
  _SubscribeTo get _value => super._value as _SubscribeTo;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_SubscribeTo(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$_SubscribeTo implements _SubscribeTo {
  const _$_SubscribeTo(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'RequestEvent.subscribeTo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribeTo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$SubscribeToCopyWith<_SubscribeTo> get copyWith =>
      __$SubscribeToCopyWithImpl<_SubscribeTo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result subscribeTo(String id),
    @required Result updateData(List<Request> currentData),
    @required
        Result addRequest(
            String categoryId, String title, String description, int amount),
    @required
        Result donate(String categoryId, String requestId, int newAmount,
            bool isComplete),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return subscribeTo(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result subscribeTo(String id),
    Result updateData(List<Request> currentData),
    Result addRequest(
        String categoryId, String title, String description, int amount),
    Result donate(
        String categoryId, String requestId, int newAmount, bool isComplete),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subscribeTo != null) {
      return subscribeTo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result subscribeTo(_SubscribeTo value),
    @required Result updateData(_UpdateData value),
    @required Result addRequest(_AddRequest value),
    @required Result donate(_Donate value),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return subscribeTo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result subscribeTo(_SubscribeTo value),
    Result updateData(_UpdateData value),
    Result addRequest(_AddRequest value),
    Result donate(_Donate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subscribeTo != null) {
      return subscribeTo(this);
    }
    return orElse();
  }
}

abstract class _SubscribeTo implements RequestEvent {
  const factory _SubscribeTo(String id) = _$_SubscribeTo;

  String get id;
  _$SubscribeToCopyWith<_SubscribeTo> get copyWith;
}

abstract class _$UpdateDataCopyWith<$Res> {
  factory _$UpdateDataCopyWith(
          _UpdateData value, $Res Function(_UpdateData) then) =
      __$UpdateDataCopyWithImpl<$Res>;
  $Res call({List<Request> currentData});
}

class __$UpdateDataCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
    implements _$UpdateDataCopyWith<$Res> {
  __$UpdateDataCopyWithImpl(
      _UpdateData _value, $Res Function(_UpdateData) _then)
      : super(_value, (v) => _then(v as _UpdateData));

  @override
  _UpdateData get _value => super._value as _UpdateData;

  @override
  $Res call({
    Object currentData = freezed,
  }) {
    return _then(_UpdateData(
      currentData == freezed
          ? _value.currentData
          : currentData as List<Request>,
    ));
  }
}

class _$_UpdateData implements _UpdateData {
  const _$_UpdateData(this.currentData) : assert(currentData != null);

  @override
  final List<Request> currentData;

  @override
  String toString() {
    return 'RequestEvent.updateData(currentData: $currentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateData &&
            (identical(other.currentData, currentData) ||
                const DeepCollectionEquality()
                    .equals(other.currentData, currentData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentData);

  @override
  _$UpdateDataCopyWith<_UpdateData> get copyWith =>
      __$UpdateDataCopyWithImpl<_UpdateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result subscribeTo(String id),
    @required Result updateData(List<Request> currentData),
    @required
        Result addRequest(
            String categoryId, String title, String description, int amount),
    @required
        Result donate(String categoryId, String requestId, int newAmount,
            bool isComplete),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return updateData(currentData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result subscribeTo(String id),
    Result updateData(List<Request> currentData),
    Result addRequest(
        String categoryId, String title, String description, int amount),
    Result donate(
        String categoryId, String requestId, int newAmount, bool isComplete),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateData != null) {
      return updateData(currentData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result subscribeTo(_SubscribeTo value),
    @required Result updateData(_UpdateData value),
    @required Result addRequest(_AddRequest value),
    @required Result donate(_Donate value),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result subscribeTo(_SubscribeTo value),
    Result updateData(_UpdateData value),
    Result addRequest(_AddRequest value),
    Result donate(_Donate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateData implements RequestEvent {
  const factory _UpdateData(List<Request> currentData) = _$_UpdateData;

  List<Request> get currentData;
  _$UpdateDataCopyWith<_UpdateData> get copyWith;
}

abstract class _$AddRequestCopyWith<$Res> {
  factory _$AddRequestCopyWith(
          _AddRequest value, $Res Function(_AddRequest) then) =
      __$AddRequestCopyWithImpl<$Res>;
  $Res call({String categoryId, String title, String description, int amount});
}

class __$AddRequestCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
    implements _$AddRequestCopyWith<$Res> {
  __$AddRequestCopyWithImpl(
      _AddRequest _value, $Res Function(_AddRequest) _then)
      : super(_value, (v) => _then(v as _AddRequest));

  @override
  _AddRequest get _value => super._value as _AddRequest;

  @override
  $Res call({
    Object categoryId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object amount = freezed,
  }) {
    return _then(_AddRequest(
      categoryId == freezed ? _value.categoryId : categoryId as String,
      title == freezed ? _value.title : title as String,
      description == freezed ? _value.description : description as String,
      amount == freezed ? _value.amount : amount as int,
    ));
  }
}

class _$_AddRequest implements _AddRequest {
  const _$_AddRequest(
      this.categoryId, this.title, this.description, this.amount)
      : assert(categoryId != null),
        assert(title != null),
        assert(description != null),
        assert(amount != null);

  @override
  final String categoryId;
  @override
  final String title;
  @override
  final String description;
  @override
  final int amount;

  @override
  String toString() {
    return 'RequestEvent.addRequest(categoryId: $categoryId, title: $title, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount);

  @override
  _$AddRequestCopyWith<_AddRequest> get copyWith =>
      __$AddRequestCopyWithImpl<_AddRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result subscribeTo(String id),
    @required Result updateData(List<Request> currentData),
    @required
        Result addRequest(
            String categoryId, String title, String description, int amount),
    @required
        Result donate(String categoryId, String requestId, int newAmount,
            bool isComplete),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return addRequest(categoryId, title, description, amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result subscribeTo(String id),
    Result updateData(List<Request> currentData),
    Result addRequest(
        String categoryId, String title, String description, int amount),
    Result donate(
        String categoryId, String requestId, int newAmount, bool isComplete),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addRequest != null) {
      return addRequest(categoryId, title, description, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result subscribeTo(_SubscribeTo value),
    @required Result updateData(_UpdateData value),
    @required Result addRequest(_AddRequest value),
    @required Result donate(_Donate value),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return addRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result subscribeTo(_SubscribeTo value),
    Result updateData(_UpdateData value),
    Result addRequest(_AddRequest value),
    Result donate(_Donate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addRequest != null) {
      return addRequest(this);
    }
    return orElse();
  }
}

abstract class _AddRequest implements RequestEvent {
  const factory _AddRequest(
          String categoryId, String title, String description, int amount) =
      _$_AddRequest;

  String get categoryId;
  String get title;
  String get description;
  int get amount;
  _$AddRequestCopyWith<_AddRequest> get copyWith;
}

abstract class _$DonateCopyWith<$Res> {
  factory _$DonateCopyWith(_Donate value, $Res Function(_Donate) then) =
      __$DonateCopyWithImpl<$Res>;
  $Res call(
      {String categoryId, String requestId, int newAmount, bool isComplete});
}

class __$DonateCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
    implements _$DonateCopyWith<$Res> {
  __$DonateCopyWithImpl(_Donate _value, $Res Function(_Donate) _then)
      : super(_value, (v) => _then(v as _Donate));

  @override
  _Donate get _value => super._value as _Donate;

  @override
  $Res call({
    Object categoryId = freezed,
    Object requestId = freezed,
    Object newAmount = freezed,
    Object isComplete = freezed,
  }) {
    return _then(_Donate(
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      requestId: requestId == freezed ? _value.requestId : requestId as String,
      newAmount: newAmount == freezed ? _value.newAmount : newAmount as int,
      isComplete:
          isComplete == freezed ? _value.isComplete : isComplete as bool,
    ));
  }
}

class _$_Donate implements _Donate {
  const _$_Donate(
      {this.categoryId, this.requestId, this.newAmount, this.isComplete});

  @override
  final String categoryId;
  @override
  final String requestId;
  @override
  final int newAmount;
  @override
  final bool isComplete;

  @override
  String toString() {
    return 'RequestEvent.donate(categoryId: $categoryId, requestId: $requestId, newAmount: $newAmount, isComplete: $isComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Donate &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.newAmount, newAmount) ||
                const DeepCollectionEquality()
                    .equals(other.newAmount, newAmount)) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(newAmount) ^
      const DeepCollectionEquality().hash(isComplete);

  @override
  _$DonateCopyWith<_Donate> get copyWith =>
      __$DonateCopyWithImpl<_Donate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result subscribeTo(String id),
    @required Result updateData(List<Request> currentData),
    @required
        Result addRequest(
            String categoryId, String title, String description, int amount),
    @required
        Result donate(String categoryId, String requestId, int newAmount,
            bool isComplete),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return donate(categoryId, requestId, newAmount, isComplete);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result subscribeTo(String id),
    Result updateData(List<Request> currentData),
    Result addRequest(
        String categoryId, String title, String description, int amount),
    Result donate(
        String categoryId, String requestId, int newAmount, bool isComplete),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (donate != null) {
      return donate(categoryId, requestId, newAmount, isComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result subscribeTo(_SubscribeTo value),
    @required Result updateData(_UpdateData value),
    @required Result addRequest(_AddRequest value),
    @required Result donate(_Donate value),
  }) {
    assert(subscribeTo != null);
    assert(updateData != null);
    assert(addRequest != null);
    assert(donate != null);
    return donate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result subscribeTo(_SubscribeTo value),
    Result updateData(_UpdateData value),
    Result addRequest(_AddRequest value),
    Result donate(_Donate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (donate != null) {
      return donate(this);
    }
    return orElse();
  }
}

abstract class _Donate implements RequestEvent {
  const factory _Donate(
      {String categoryId,
      String requestId,
      int newAmount,
      bool isComplete}) = _$_Donate;

  String get categoryId;
  String get requestId;
  int get newAmount;
  bool get isComplete;
  _$DonateCopyWith<_Donate> get copyWith;
}
