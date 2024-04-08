import 'package:flutter/material.dart';
import 'package:new_app/Logo.dart';
import 'package:new_app/Routes/OngeneratrRoute.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home:const FirstPage(),
      onGenerateRoute:(settings) =>OngeneratRoute().generateRoute(settings) ,
    );
  }
}