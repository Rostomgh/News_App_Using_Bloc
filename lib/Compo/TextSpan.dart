import 'package:flutter/material.dart';

class CustomTextSpan extends StatefulWidget {
  final void Function()? tap;
  const CustomTextSpan({super.key, this.tap});

  @override
  State<CustomTextSpan> createState() => _CustomTextSpanState();
}

class _CustomTextSpanState extends State<CustomTextSpan> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tap,
      child: const Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: "Don't have account? ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: "Register",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          )
        ])),
      ),
    );
  }
}
