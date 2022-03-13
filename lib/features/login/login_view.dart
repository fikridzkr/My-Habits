import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/animation/fade_animation.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/ui/shared/app_bar.dart';
import 'package:my_habits/core/ui/shared/button.dart';
import 'package:my_habits/core/ui/shared/input_field.dart';
import 'package:my_habits/features/login/controller/login_controller.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    Get.mediaQuery;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBarWidget.base(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const FadeAnimation(
                          1,
                          Text(
                            Common.login,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            Common.loginDescription,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          )),
                    ],
                  ),
                  _formInput(),
                  _buttonLogin(),
                  _textRegister(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _formInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: <Widget>[
            FadeAnimation(
                1.2,
                InputFieldWidget(
                  label: "Email",
                  controller: controller.emailController,
                  validator: (value) => controller.emailValidation(value),
                )),
            FadeAnimation(
                1.3,
                InputFieldWidget(
                  label: "Password",
                  obscureText: true,
                  controller: controller.passwordController,
                  validator: (value) => controller.passwordValidation(value),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return FadeAnimation(
        1.4,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
              padding: const EdgeInsets.only(top: 3, left: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: const Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  )),
              child: ButtonWidget.base(
                onPressed: () => controller.login(),
                label: Common.login,
                color: CustomColor.primaryColour,
                elevetion: 0,
              )),
        ));
  }

  FadeAnimation _textRegister() {
    return FadeAnimation(
        1.5,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(Common.signupQuestion),
            GestureDetector(
                onTap: controller.navigateToRegister,
                child: const Text(
                  Common.signup,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ))
          ],
        ));
  }
}
