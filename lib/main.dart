import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_twitter/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:my_twitter/screens/splash_screen/splash_screen.dart';
import 'package:my_twitter/screens/user_settings_screen/user_settings_screen.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/services/auth/bloc/auth_bloc.dart';
import 'screens/home_screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _authService = AuthService();

  final routes = <String, WidgetBuilder>{
    // Путь, по которому создаётся Home Screen
    '/Home': (BuildContext context) => HomeScreen(),
    '/Settings': (BuildContext context) => UserSettingsScreen()
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
        home: SplashScreen(nextRoute: '/Home'),
        routes: routes,
      ),
    );
  }
}

