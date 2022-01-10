
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/utils/constants.dart';
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
    try{
      User? u = await _authService.signInUsingEmailPassword(email, password);
      bool isSignedIn = await _authService.isSignedIn();
      if(isSignedIn){
        return _ShowSuccess();
      }
      else{
        return _ShowScreen();
      }
    }
    on FirebaseException catch(e){
      log(e.code);
      return _ErrorLoading(getMessageToTheErrorCode(e.code));
    }


  }

  String getMessageToTheErrorCode(String code){
    switch (code){
      case FirebaseErrorCodes.user_not_found:
        return ErrorMessages.user_not_found_message;
      case FirebaseErrorCodes.wrong_password:
        return ErrorMessages.wrong_password_message;
      case FirebaseErrorCodes.too_many_requests:
        return ErrorMessages.too_many_requests_message;
      default:
        return '';
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
