import 'package:flutter/material.dart';
import 'package:new_app/Compo/Const.dart';
import 'package:new_app/Compo/CustomButton.dart';
import 'package:new_app/Compo/TextInputField.dart';
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
                onpressed: () {
                  Navigator.pushReplacementNamed(context, 'Signup');
                },
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                "Forgot password?",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 100),
              const Divider(
                thickness: 2,
              ),
              const IconSocial(),
              SizedBox(height: 37),
              const Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "Don't have account",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
