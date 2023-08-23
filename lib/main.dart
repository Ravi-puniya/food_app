import 'package:flutter/material.dart';
import 'package:food_app/Provider/main_provider.dart';
import 'package:food_app/Screen/Auth/auth_screen.dart';
import 'package:food_app/Screen/cart_screen.dart';
import 'package:food_app/Screen/detail_screen.dart';
import 'package:food_app/Screen/main_screen.dart';
import 'package:food_app/Screen/splash_Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavBarProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/auth':(context) => AuthScreen(),
            '/main':(context) => MainScreen(),
            '/cart':(context) => CartScreen(),
            
          },
          home: SplashScreen()),
    );
  }
}
