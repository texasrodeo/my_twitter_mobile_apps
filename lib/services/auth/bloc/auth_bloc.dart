import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/services/auth/auth_service.dart';



part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc({required AuthService authService})
      : assert(authService != null),
        _authService = authService,
        super(_Initial());



  @override
  Stream<AuthState> mapEventToState(
      AuthEvent event,
      ) async* {
    if (event is _AppStarted) {
      yield* _mapAppStartedToState();
    } else if (event is _SignIn) {
      yield* _mapLoggedInToState();
    } else if (event is _SignOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthState> _mapAppStartedToState() async* {
    try {
      final isSignedIn = await _authService.isSignedIn();
      if (isSignedIn) {
        yield _Authenticated();
      } else {
        yield _Unauthenticated();
      }
    } catch (_) {
      yield _Unauthenticated();
    }
  }

  Stream<AuthState> _mapLoggedInToState() async* {
    yield _Authenticated();
  }

  Stream<AuthState> _mapLoggedOutToState() async* {
    yield _Unauthenticated();
    _authService.signOut();
  }

  void dispose() {}

}
