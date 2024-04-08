import 'package:flutter/material.dart';
import 'package:new_app/Compo/Const.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onpressed;
  final String text;
  const CustomButton({super.key, this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 42,
      child: MaterialButton(
        onPressed: onpressed,
        color: ColorButton,
        textColor: Colors.white,
        child: Text(text, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
