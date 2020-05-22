import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/core/value_objects.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    @required UniqueId id,
    @required ValidName categoryName,
    @required ValidUrl imageUrl,
    @required Count requestCount,
  }) = _Category;
}
