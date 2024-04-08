import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/Compo/LIstNavBar.dart';
import 'package:new_app/Logic/Nav_Bar/nav_bar_bloc.dart';
import 'package:new_app/Routes/ErrorScreen.dart';
import 'package:new_app/Screen/HomePage.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int select = 0;
  List<Widget> Screen = [
    const HomeScreen(),
    const ErrorRoute(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return Scaffold(
            body: Screen.elementAt(state.tabindex),
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (index) {
                  BlocProvider.of<NavBarBloc>(context)
                  .add(tabChange(tabindex: index));
              },
              backgroundColor: Colors.blue,
              buttonBackgroundColor: Colors.white,
              color: Colors.blue,
              animationDuration: const Duration(milliseconds: 300),
              items: itemNavBar(),
              
                
            ));
      },
    );
  }
}
