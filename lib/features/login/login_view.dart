import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_habits/features/login/controller/login_controller.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(context) => Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(
                  //   height: 155.0,
                  //   child: Image.asset(
                  //     "assets/logo.png",
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  const SizedBox(height: 45.0),
                  emailField(),
                  const SizedBox(height: 25.0),
                  passwordField(),
                  const SizedBox(
                    height: 35.0,
                  ),
                  loginButton(context),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ));

  TextField emailField() {
    return TextField(
      obscureText: true,
      style: controller.style,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }

  TextField passwordField() {
    return TextField(
      obscureText: true,
      style: controller.style,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }

  Material loginButton(BuildContext context) {
    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: const Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {},
          child: Text("Login",
              textAlign: TextAlign.center,
              style: controller.style
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        ));
  }
}
