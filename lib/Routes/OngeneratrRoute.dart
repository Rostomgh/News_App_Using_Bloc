import 'package:flutter/material.dart';
import 'package:new_app/Routes/ErrorScreen.dart';
import 'package:new_app/auth/LoginScreen.dart';

class OngeneratRoute {
   Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Login':
        return MaterialPageRoute(builder: (_) =>const Login());
      default:
        return MaterialPageRoute(builder: (_)=>const ErrorRoute());
    }
  }
}
