import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/Dio/Bloc%20Dio/bloc/dio_bloc.dart';
import 'package:new_app/Dio/BlocObserve.dart';
import 'package:new_app/Dio/DioHelper.dart';
import 'package:new_app/Logic/Nav_Bar/nav_bar_bloc.dart';
import 'package:new_app/Logo.dart';
import 'package:new_app/Routes/OngeneratrRoute.dart';

void main() async {
  await Helpers.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarBloc(),
        ),
        BlocProvider(
          create: (context) => DioBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: const FirstPage(),
        onGenerateRoute: (settings) => OngeneratRoute().generateRoute(settings),
      ),
    );
  }
}
