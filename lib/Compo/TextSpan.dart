import 'package:flutter/material.dart';

class CustomTextSpan extends StatefulWidget {
  final void Function()? tap;
  final String? textone;
  final String? texttwo;

  const CustomTextSpan({
    Key? key,
    this.tap,
    required this.textone,
    required this.texttwo,
  }) : super(key: key);

  @override
  State<CustomTextSpan> createState() => _CustomTextSpanState();
}

class _CustomTextSpanState extends State<CustomTextSpan> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tap,
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.textone,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
                TextSpan(
                text: widget.texttwo ,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
