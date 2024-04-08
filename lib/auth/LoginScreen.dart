import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/Compo/Const.dart';
import 'package:new_app/Compo/CustomButton.dart';
import 'package:new_app/Compo/Forgot.dart';
import 'package:new_app/Compo/Separation.dart';
import 'package:new_app/Compo/TextInputField.dart';
import 'package:new_app/Compo/TextSpan.dart';
import 'package:new_app/Compo/social_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> forms = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 80),
              Image.asset("assets/images/LogoNews.png", width: 200),
              const SizedBox(height: 140),
              CustomTextInput(
                mycontroller: email,
                obc: false,
                text: "Enter Your Email",
                valid: (val) {
                  if (val == "") {
                    return "can't be empty";
                  }
                  return null;
                },
              ),
              espace,
              CustomTextInput(
                mycontroller: password,
                obc: true,
                text: "Enter Your Password",
                valid: (val) {
                  return "can't be empty";
                },
              ),
              espace,
              CustomButton(
                text: "Login",
                onpressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ForgotText(),
              const SizedBox(height: 100),
              const CustomSep(),
              const IconSocial(),
              const SizedBox(height: 30),
              CustomTextSpan(
                textone: "Don't have account? ",
                texttwo: "Register",
                tap: () {
                Navigator.pushReplacementNamed(context, 'Signup');
              })
            ],
          ),
        ),
      ),
    );
  }
}
