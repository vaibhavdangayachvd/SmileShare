import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/core/value_objects.dart';

part 'request.freezed.dart';

@freezed
abstract class Request with _$Request {
  const factory Request({
    @required UniqueId id,
    @required ValidDescription description,
    @required ValidName title,
    @required DateTime creationTime,
    @required DateTime completionTime,
    @required Count requiredAmount,
    @required Count currentAmount,
    @required ValidUrl imageUrl,
    @required String videoUrl,
    @required bool completed,
    @required bool verified,
  }) = _Request;
}
