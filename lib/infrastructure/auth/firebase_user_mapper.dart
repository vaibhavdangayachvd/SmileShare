import 'package:firebase_auth/firebase_auth.dart';
import 'package:smileshare/domain/auth/user.dart';
import 'package:smileshare/domain/core/value_objects.dart';

extension FirebaseUserDomainx on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
