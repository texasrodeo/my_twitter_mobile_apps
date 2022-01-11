
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/utils/constants.dart';

part 'sign_up_screen_event.dart';
part 'sign_up_screen_state.dart';
part 'sign_up_screen_bloc.freezed.dart';


Dio dio = Dio();

class SignUpScreenBloc extends Bloc<SignUpScreenEvent, SignUpScreenState> {
  final AuthService _authService;

  String addUserUrl = '${Constants.apiBaseUrl}users/user/create';
  final String signInScreenRoute =  "/SignIn";

  var parameters = Map<String, dynamic>();
  void buildParameters(String email, String? imageUrl, String username, String? phone){
    parameters['email'] = email;
    parameters['imageUrl'] = imageUrl;
    parameters['username'] = username;
    parameters['phone'] = phone;
  }


  SignUpScreenBloc()
      :
        _authService = AuthService(),
        super(_Initial());

  Future<bool> isSignedIn() async {
    return _authService.isSignedIn();
  }

  SignUpScreenState processLoadEvent(){
    return _ShowScreen();
  }

  Future<SignUpScreenState> processSignIn(String email, String password, String username) async {
    try{
      User? user = await _authService.signUp(email, password);
      if(user!=null){
        buildParameters(email, null, username, null);
        Response response = await dio.post(
          addUserUrl,
          data: jsonEncode(parameters),
        );

      }
      if(await _authService.isSignedIn()){
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
      case FirebaseErrorCodes.email_already_in_use:
        return ErrorMessages.email_already_in_usemessage;
      default:
        return '';
    }
  }


  @override
  Stream<SignUpScreenState> mapEventToState(
      SignUpScreenEvent   event   )
    async* {
    if (event is _Started) {
      yield (await processLoadEvent());
    }
    if(event is _SignUp){
      yield await processSignIn(event.email, event.password, event.username);
    }
    if(event is _Loading){
      log('ddd');
      yield _SigningUpInProgress();
    }
  }
}
