import 'package:dartz/dartz.dart';
import 'package:smileshare/domain/core/value_failure.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure, T> get value;

  bool get isValid => value.isRight();
}
