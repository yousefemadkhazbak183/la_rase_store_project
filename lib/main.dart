import 'package:flutter/material.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/screens/splash_screen.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/create_account_page.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/home_screen.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/sign_in_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => splashScreen(),
        '/signup': (context) => CreateAccountPage(),
        '/signin': (context) =>  SignInPage(),
        '/homescreen': (context) => HomeScreen(),
      },
    );
  }
}