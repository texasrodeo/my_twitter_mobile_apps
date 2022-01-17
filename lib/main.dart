import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/screens/addpost_screen/addpost_screen.dart';
import 'package:my_twitter/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:my_twitter/screens/onboarding_screen/onboarding_screen.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/sign_up_screen/sign_up_screen.dart';
import 'package:my_twitter/screens/splash_screen/splash_screen.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/home_screen/home_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);

  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
  }

  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => HomeScreen(),
    '/AddPost' : (BuildContext context) => (AddPostScreen()),
    '/Profile' : (BuildContext context) => (UserProfileScreen(user: null)),
    '/SignIn' : (BuildContext context) => SignInScreen(),
    '/SignUp' : (BuildContext context) => SignUpScreen(),
    '/OnBoarding' : (BuildContext context) => OnboardingScreen(nextRoute: '/Home',),
    '/post' : (BuildContext context) => AddPostScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenBloc>(
          create: (BuildContext context) => HomeScreenBloc(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'my twitter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: initScreen == 0 || initScreen == null ? SplashScreen(nextRoute: '/OnBoarding') : SplashScreen(nextRoute: '/Home'),
        routes: routes,
      ),
    );
  }
}

