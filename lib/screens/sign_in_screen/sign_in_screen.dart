import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/components/loadingBar.dart';
import 'package:my_twitter/screens/sign_in_screen/bloc/sign_in_screen_bloc.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';
import 'package:my_twitter/utils/constants.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late SignInScreenBloc _signInScreenBloc;
  bool _buttonsEnabled = false;

  String loadingText = "Выполняется вход";

  Widget viewToReturn = Container();

  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _signInScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: BlocProvider<SignInScreenBloc>(
        create: (BuildContext context) => SignInScreenBloc(),
        child: BlocBuilder<SignInScreenBloc, SignInScreenState>(
            builder: (BuildContext context, SignInScreenState state) {
          _signInScreenBloc = BlocProvider.of<SignInScreenBloc>(context);
          Widget viewToReturn = Container();
          state.when(initial: () {
            _signInScreenBloc.add(SignInScreenEvent.started());
            viewToReturn = const Center(
              child: CircularProgressIndicator(),
            );
          }, showScreen: () {
            viewToReturn = _buildSignInScreen();
          }, errorLoading: (String errorCode) {
            viewToReturn = _buildSignInScreenWithError(errorCode);
          }, showSuccess: () {
//            Navigator.push(
//                context,
//                PageRouteBuilder(
//                    opaque: false,
//                    pageBuilder: (_, __, ___) => UserProfileScreen(user: null)));
            viewToReturn = _buildSuccessScreen();
          }, signingInProgress: () {
            viewToReturn = _showLoadingProcess();
          });
          return viewToReturn;
        }),
      ),
    );
  }

  Widget _buildSignInScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Вход в систему',
          style: TextStyle(fontSize: 30),
        ),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
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
              _buildSignUpnLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (validateForm()) {
                      _signInScreenBloc.add(SignInScreenEvent.signIn(
                          _emailController.text, _passwordController.text));
                    }
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(
//                        fontSize: 20
                        ),
                  ),
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
          'Вход в систему',
          style: TextStyle(fontSize: 30),
        ),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
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
              _buildSignUpnLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (validateForm()) {
                      _signInScreenBloc.add(SignInScreenEvent.signIn(
                          _emailController.text, _passwordController.text));
                    }
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(
//                        fontSize: 20
                        ),
                  ),
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
    return Container(
      margin: EdgeInsets.only(top: 10),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
    );
  }

  Widget _buildSuccessScreen() {
    return Stack(
      children: [
        AnimatedOpacity(
            opacity: 0.6,
            duration: const Duration(milliseconds: 100),
            child: _buildSignInScreen()),
        _showSuccessAlert()
      ],
    );
  }

  Widget _showSuccessAlert() {
    return AlertDialog(
      title: Text('Вы успешно вошли в систему'),
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
            child: _buildSignInScreen()),
        LoadingBar(text: loadingText)
      ],
    );
  }

  Widget _buildSignUpnLink() {
    return Container(
      margin: EdgeInsets.only(
        top: 10
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(5),
            primary: Colors.blue,
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {
            navigateToSignIn();
          },
          child: const Text('Регистрация'),
        ),
      ),
    );
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

  void navigateToSignIn() {
    Navigator.of(context)
        .pushReplacementNamed(_signInScreenBloc.signUpScreenRoute);
  }
}
