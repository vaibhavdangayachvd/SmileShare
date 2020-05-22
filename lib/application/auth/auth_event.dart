import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/auth/auth_states.dart';
part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authStateChanged(AuthStates currentAuthState) = _AuthStateChanged;
  const factory AuthEvent.logout() = _Logout;
}
