import 'package:flutter/material.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()));
    });
    return Scaffold(
      body: Image.asset('assets/images/Splash Screen.jpeg',
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,),
    );
  }
}
