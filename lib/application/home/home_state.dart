
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/category/category.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState{
  const factory HomeState.initial() = _Initial;
  const factory HomeState.empty() = _Empty;
  const factory HomeState.hasData(List<Category> categories) = _HasData;
}
