


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/screens/sign_up_screen/bloc/sign_up_screen_bloc.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen>{
  late SignUpScreenBloc _signUpScreenBloc;

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
                  errorLoading: () {
                    viewToReturn = Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  showSuccess: () {
                    viewToReturn =  _buildSuccessScreen();
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
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Имя пользователя'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Не должно быть пустым';
                  }
                  else{
                    return null;
                  }

                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Не должно быть пустым';
                  }
                  else{
                    return null;
                  }

                },
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(labelText:
                'Пароль'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Не должно быть пустым';
                  }
                  return null;
                },
              ),
              _buildSignInLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _signUpScreenBloc.add(SignUpScreenEvent.signUp(_emailController.text, _passwordController.text, _usernameController.text));
                    }
                  },
                  child: const Text('Зарегистрироваться'),
                ),
              ),
//             Container(
//                  alignment: Alignment.center,
//                    child: Text(_signInScreenBloc.isSignedIn() == null
//                    ? ''
//                        : (_success
//                    ? 'Успешный вход!'
//                    : 'Registration failed')),
//              )
            ],
          ),
        )
      ],
    );

  }


  Widget _buildSuccessScreen(){
    return AlertDialog(
      title: Text('Вы успешно рошли регистрацию'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
//              PageRouteBuilder(
//                  opaque: false,
//                  pageBuilder: (_, __, ___) => SignInScreen()
//              ),
            );
          },
          child: Text('OK'),
        ),
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


  void navigateToSignIn(){
    Navigator.of(context).pushReplacementNamed(_signUpScreenBloc.signInScreenRoute);
  }


}


