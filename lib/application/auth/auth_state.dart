import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/user.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.loggedIn(User user) = _LoggedIn;

  const factory AuthState.initial() = _Initial;
}
