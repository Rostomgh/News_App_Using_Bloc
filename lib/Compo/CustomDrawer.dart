import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final String head;
  const CustomDrawer({super.key, required this.head});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(widget.head),
          ),
          
        ],
      ),
    );
  }
}
