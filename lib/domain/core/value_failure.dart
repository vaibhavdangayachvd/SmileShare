import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidPhoneNumber() = _InvalidPhoneNumber;

  const factory ValueFailure.shortLength(int minimumLength) = _ShortLength;

  const factory ValueFailure.longLength(int maximumLength) = _LongLength;

  const factory ValueFailure.invalidCount() = _InvalidCount;
  const factory ValueFailure.invalidUrl() = _InvalidUrl;
}
