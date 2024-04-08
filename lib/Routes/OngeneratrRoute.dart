import 'package:flutter/material.dart';
import 'package:new_app/Routes/ErrorScreen.dart';
import 'package:new_app/auth/LoginScreen.dart';
import 'package:new_app/auth/SignUpScreen.dart';

class OngeneratRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Login':
        return MaterialPageRoute(builder: (_) => const Login());
      case 'Signup':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
