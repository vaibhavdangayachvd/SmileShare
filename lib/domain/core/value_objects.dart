import 'package:dartz/dartz.dart';
import 'package:smileshare/core/value_object.dart';
import 'package:smileshare/domain/core/value_failure.dart';
import 'package:smileshare/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class MobileNumber extends ValueObject<String> {
  @override
  Either<ValueFailure, String> value;

  factory MobileNumber(String mobileNumber) {
    assert(mobileNumber != null);
    return MobileNumber._(ValueValidators.validateMobileNumber(mobileNumber));
  }

  MobileNumber._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory UniqueId() {
    final uniqueId = Uuid().v1();
    return UniqueId._(right(uniqueId));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}

class ValidName extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory ValidName(String name) {
    assert(name != null);
    return ValidName._(ValueValidators.validateName(name));
  }

  const ValidName._(this.value);
}
class ValidDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory ValidDescription(String name) {
    assert(name != null);
    return ValidDescription._(ValueValidators.validateDescription(name));
  }

  const ValidDescription._(this.value);
}
class Count extends ValueObject<int> {
  @override
  final Either<ValueFailure, int> value;

  factory Count(int number) {
    assert(number != null);
    return Count._(ValueValidators.validateCount(number));
  }

  const Count._(this.value);
}

class ValidUrl extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure, String> value;
  factory ValidUrl(String url){
    assert(url!=null);
    return ValidUrl._(ValueValidators.validateUrl(url));
  }
  ValidUrl._(this.value);
}
