import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:new_app/auth/LoginScreen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: AnimatedSplashScreen(
          splash:  Image.asset("assets/images/LogoNews.png",width: 350),
          nextScreen:const  Login(),),
)
    );
  }
}