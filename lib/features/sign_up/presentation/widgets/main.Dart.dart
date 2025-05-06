import 'package:flutter/material.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/screens/splash_screen.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/create_account_page.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/screens/home_screen.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/sign_in_page.dart';

import 'Home_screen/HomeScreen.dart';


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
      // This is the initial route of the app.
      
      initialRoute: '/splash',
      routes: {
<<<<<<< HEAD:lib/features/sign_up/presentation/widgets/main.Dart.dart
        HomeScreen.routNam :(context)=> HomeScreen(),
        splashScreen.routeName :(context)=> splashScreen(),
        CreateAccountPage.routeName: (context) => CreateAccountPage(),
        SignInPage.routeName: (context) => SignInPage(),

=======
        
        
        '/splash': (context) => SplashScreen(),
        '/signup': (context) => CreateAccountPage(),
        '/signin': (context) =>  SignInPage(),
        '/homescreen': (context) => HomeScreen(),
>>>>>>> e1e9afac56d0ea00c2c6839860bf2fcb0a212252:lib/main.dart
      },
    );
  }
}