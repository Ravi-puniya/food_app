import 'package:flutter/material.dart';
import 'package:food_app/Screen/Auth/auth_screen.dart';
import 'package:food_app/Screen/main_screen.dart';
import 'package:food_app/Screen/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/auth':(context) => AuthScreen(),
          '/main':(context) => MainScreen()
        },
        home: SplashScreen());
  }
}
