import 'package:flutter/material.dart';
import 'package:new_app/Compo/CustomButton.dart';
import 'package:new_app/Compo/Radio.dart';
import 'package:new_app/Compo/TextInputField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController number = TextEditingController();

  GlobalKey<FormState> forms = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              Image.asset("assets/images/LogoNews.png", width: 200),
              const SizedBox(height: 100),
              CustomTextInput(
                mycontroller: username,
                obc: false,
                text: "Enter Your Username",
                valid: (val) {
                  if (val == "") {
                    return "Username cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomTextInput(
                mycontroller: email,
                obc: false,
                text: "Enter Your Email",
                valid: (val) {
                  if (val == "") {
                    return "Email cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomTextInput(
                mycontroller: number,
                obc: false,
                text: "Enter Your Phone Number",
                valid: (val) {
                  if (val == "") {
                    return "Phone number cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomTextInput(
                mycontroller: password,
                obc: true,
                text: "Enter Your Password",
                valid: (val) {
                  if (val == "") {
                    return "Password cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'I am:',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              const CustomRadioButton(),
              const SizedBox(height: 10),
              CustomButton(
                  text: 'Create',
                  onpressed: () {
                    Navigator.pushNamed(context, 'Login');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
