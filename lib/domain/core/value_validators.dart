import 'package:dartz/dartz.dart';
import 'package:smileshare/domain/core/value_failure.dart';

class ValueValidators {
  static Either<ValueFailure, String> validateMobileNumber(
      String mobileNumber) {
    const String expression = r'^((\+){1}91){1}[1-9]{1}[0-9]{9}$';
    final rexEx = RegExp(expression);
    if (rexEx.hasMatch(mobileNumber)) {
      return Right(mobileNumber);
    } else {
      return const Left(ValueFailure.invalidPhoneNumber());
    }
  }

  static Either<ValueFailure, String> validateName(String name) {
    if (name.length < 3) {
      return const Left(ValueFailure.shortLength(3));
    } else if (name.length > 15) {
      return const Left(ValueFailure.longLength(15));
    } else {
      return Right(name);
    }
  }
  static Either<ValueFailure, String> validateDescription(String name) {
    if (name.length < 10) {
      return const Left(ValueFailure.shortLength(10));
    } else if (name.length > 100) {
      return const Left(ValueFailure.longLength(100));
    } else {
      return Right(name);
    }
  }
  static Either<ValueFailure, int> validateCount(int num) {
    if (num < 0) {
      return const Left(ValueFailure.invalidCount());
    } else {
      return Right(num);
    }
  }

  static Either<ValueFailure, String> validateUrl(String url) {
    const expression = r'(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png|jpeg)';
    final regex = RegExp(expression);
    if (regex.hasMatch(url)) {
      return right(url);
    } else {
      return left(const ValueFailure.invalidUrl());
    }
  }
}
