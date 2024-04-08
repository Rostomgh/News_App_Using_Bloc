import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController mycontroller;
  final String? Function(String?)? valid;
  final bool obc;
  final String text;
  const CustomTextInput(
      {super.key,
      required this.mycontroller,
      required this.obc,
      required this.text, this.valid});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      
    /*  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),*/
      child: TextFormField(
        validator: valid,
        controller: mycontroller,
        obscureText: obc,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w300),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          )
          ),
          
          
      ),
    );
  }
}
