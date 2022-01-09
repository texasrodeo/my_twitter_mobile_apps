


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/screens/sign_in_screen/bloc/sign_in_screen_bloc.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}


class _SignInScreenState extends State<SignInScreen>{
  late SignInScreenBloc _signInScreenBloc;

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
  Widget build(BuildContext buildContext){
    return Scaffold(
      body: BlocProvider<SignInScreenBloc>(
        create: (BuildContext context) => SignInScreenBloc(),
        child: BlocBuilder<SignInScreenBloc,SignInScreenState> (
            builder: (BuildContext context, SignInScreenState state){
              _signInScreenBloc = BlocProvider.of<SignInScreenBloc>(context);
              Widget viewToReturn = Container();
              state.when(
                  initial: (){
                    _signInScreenBloc.add(SignInScreenEvent.started());
                    viewToReturn = const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  showScreen: (){
                    viewToReturn =  _buildSignInScreen();
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


//  Widget _buildSignInScreen(){
//    return Column(
//      children: [
//        Text(
//          'Привет'
//        )
//      ],
//    );
//  }

  Widget _buildSignInScreen(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Вход в систему',
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
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
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
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              _buildSignUpnLink(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _signInScreenBloc.add(SignInScreenEvent.signIn(_emailController.text, _passwordController.text));
                    }
                  },
                  child: const Text('Войти'),
                ),
              ),
            ],
          ),
        )
      ],
    );

  }

  Widget _buildSuccessScreen(){
    return AlertDialog(
      title: Text('Вы успешно вошли в систему'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          child: Text('OK'),
        ),
      ],
    );
  }

  Widget _buildSignUpnLink(){ 
    return Align(
          alignment: Alignment.center,
            child: Row(
              children: [
                TextButton(
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
              ],
            )
        );
  }


  void navigateToSignIn(){
    Navigator.of(context).pushReplacementNamed(_signInScreenBloc.signUpScreenRoute);
  }



}


