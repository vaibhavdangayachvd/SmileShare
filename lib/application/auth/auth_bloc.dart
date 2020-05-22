import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/auth/auth_states.dart';
import 'package:smileshare/domain/auth/i_auth_facade.dart';
import './bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;
  StreamSubscription<AuthStates> _authStreamSubscription;

  AuthBloc(this.authFacade);

  @override
  AuthState get initialState {
    _authStreamSubscription = authFacade.authStates.listen((event) {
      add(AuthEvent.authStateChanged(event));
    });
    return const AuthState.initial();
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      authStateChanged: (currentAuthState) async* {
        yield* currentAuthState.when(
          loggedIn: (user) async* {
            yield AuthState.loggedIn(user);
          },
          loggedOut: () async* {
            yield const AuthState.loggedOut();
          },
        );
      },
      logout: () async* {
        authFacade.logout();
      },
    );
  }

  @override
  Future<void> close() {
    _authStreamSubscription.cancel();
    return super.close();
  }
}
