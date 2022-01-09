
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../services/auth/auth_service.dart';


part 'sign_in_screen_event.dart';
part 'sign_in_screen_state.dart';
part 'sign_in_screen_bloc.freezed.dart';


class SignInScreenBloc extends Bloc<SignInScreenEvent, SignInScreenState>{
  final AuthService _authService;


  SignInScreenBloc():
        _authService = AuthService(), super(_Initial());

  final String signUpScreenRoute =  "/SignUp";


  Future<bool> isSignedIn() async {
    return _authService.isSignedIn();
  }

  SignInScreenState processLoadEvent(){
    return _ShowScreen();
  }

  Future<SignInScreenState> processSignIn(String email, String password) async {
    _authService.signInUsingEmailPassword(email, password);
    if(await _authService.isSignedIn()){
      return _ShowSuccess();
    }
    else{
      return _ShowScreen();
    }

  }


  @override
  Stream<SignInScreenState> mapEventToState(
      SignInScreenEvent event,
      ) async* {
    if (event is _Started) {
      yield (await processLoadEvent());
    }
    if(event is _SignIn){
      yield await processSignIn(event.email, event.password);
    }
  }
}
