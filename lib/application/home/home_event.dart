import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/category/category.dart';

part 'home_event.freezed.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.updateData(List<Category> categories) = _HomeEvent;
}
