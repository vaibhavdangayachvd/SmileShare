import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/user.dart';

part 'auth_states.freezed.dart';

@freezed
abstract class AuthStates with _$AuthStates {
  const factory AuthStates.loggedIn(User user) = _LoggedIn;

  const factory AuthStates.loggedOut() = _LoggedOut;
}
