import 'package:flutter/material.dart';

class CustomSep extends StatelessWidget {
  const CustomSep({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 115,
        height: 1,
        color: Colors.black,
      ),
      const Text(' Or Sign In With ',style: TextStyle(fontSize: 18),),
      Container(
        width: 115,
        height: 1,
        color: Colors.black,
      ),
    ]);
  }
}
