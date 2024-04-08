import 'package:flutter/material.dart';
import 'package:new_app/Compo/CustomButton.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String groupValue = "Yes";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'Media Reporter',
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            }),
        const SizedBox(width: 3),
        const Text(
          'Media Reporter',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Radio(
            value: 'Visitor',
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            }),
        const SizedBox(width: 3),
        const Text(
          'Vesitor',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
