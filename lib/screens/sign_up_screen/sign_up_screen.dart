


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/components/loadingBar.dart';
import 'package:my_twitter/screens/sign_up_screen/bloc/sign_up_screen_bloc.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';
import 'package:my_twitter/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen>{
  late SignUpScreenBloc _signUpScreenBloc;

  bool _buttonsEnabled = false;
  String loadingText = "Выполняется регистрация";
  Widget viewToReturn = Container();

  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _signUpScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      body: BlocProvider<SignUpScreenBloc>(
        create: (BuildContext context) => SignUpScreenBloc(),
        child: BlocBuilder<SignUpScreenBloc,SignUpScreenState> (
            builder: (BuildContext context, SignUpScreenState state){
              _signUpScreenBloc = BlocProvider.of<SignUpScreenBloc>(context);
              Widget viewToReturn = Container();
              state.when(
                  initial: (){
                    _signUpScreenBloc.add(SignUpScreenEvent.started());
                    viewToReturn = const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  showScreen: (){
                    viewToReturn =  _buildSignUpScreen();
                  },
                  errorLoading: (String errorCode) {
                    viewToReturn = _buildSignInScreenWithError(errorCode);
                  },
                  showSuccess: () {
                    SchedulerBinding.instance!.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (_, __, ___) => UserProfileScreen(user: null)));
                    });
//                    viewToReturn =  _buildSuccessScreen();
                  },
                  signingUpInProgress: () {
                    viewToReturn =  _showLoadingProcess();
                  }
              );
              return viewToReturn;
            }
        ),
      ),
    );
  }


  Widget _buildSignUpScreen(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            'Регистрация',
          style: TextStyle(
              fontSize: 30
          ),
        ),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      labelText: 'Имя пользователя',
                      errorText: validateUsername(_usernameController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: 'Email',
                    errorText: validateEmail(_emailController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'Пароль',
                      errorText: validatePassword(_passwordController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              _buildSignInLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (validateForm()){
                      _signUpScreenBloc.add(SignUpScreenEvent.loading());
                      _signUpScreenBloc.add(SignUpScreenEvent.signUp(_emailController.text, _passwordController.text, _usernameController.text));
                    }
                  },
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        )
      ],
    );

  }


  Widget _buildSignInScreenWithError(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Регистрация',
          style: TextStyle(
              fontSize: 30
          ),
        ),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Имя пользователя',
                    errorText: validateUsername(_usernameController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: validateEmail(_emailController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    errorText: validatePassword(_passwordController.text),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              _buildErrorMessage(message),
              _buildSignInLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (validateForm()){
                      _signUpScreenBloc.add(SignUpScreenEvent.loading());
                      _signUpScreenBloc.add(SignUpScreenEvent.signUp(_emailController.text, _passwordController.text, _usernameController.text));
                    }
                  },
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        )
      ],
    );

  }

  Widget _buildErrorMessage(String message) {
    log(message);
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildSuccessScreen() {
    return Stack(
      children: [
        AnimatedOpacity(
            opacity: 0.6,
            duration: const Duration(milliseconds: 100),
            child: _buildSignUpScreen()),
        _showSuccessAlert()
      ],
    );
  }

  Widget _showSuccessAlert() {
    return AlertDialog(
      title: Text('Вы успешно зарегистрировались в системе'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => UserProfileScreen(user: null)),
            );
          },
          child: Text('OK'),
        ),
      ],
    );
  }

  Widget _showLoadingProcess() {
    _buttonsEnabled = false;
    return Stack(
      children: [
        AnimatedOpacity(
            opacity: 0.6,
            duration: const Duration(milliseconds: 100),
            child: _buildSignUpScreen()),
        LoadingBar(text: loadingText)
      ],
    );
  }


  Widget _buildSignInLink(){
    return Container(
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                  "Уже зарегистрированы? ",
                style: const TextStyle(fontSize: 15),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(5),
                  primary: Colors.blue,
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  navigateToSignIn();
                },
                child: const Text('Войти'),
              ),
            ],
          ),
        )

    );
  }

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return "Заполните обязательное поле!";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Заполните обязательное поле!";
    }
    if (value.length < 6) {
      return "Минимальная длина 6 символов";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Заполните обязательное поле!";
    }
    if (!RegExp(Constants.emailValidationRegexp).hasMatch(value)) {
      return "Некорректный e-mail";
    }
    return null;
  }

  bool validateForm() {
    return validateEmail(_emailController.text) == null &&
        validatePassword(_passwordController.text) == null;
  }


  void navigateToSignIn(){
    Navigator.of(context).pushReplacementNamed(_signUpScreenBloc.signInScreenRoute);
  }


}


