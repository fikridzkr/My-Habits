import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/animation/fade_animation.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/ui/shared/app_bar.dart';
import 'package:my_habits/core/ui/shared/button.dart';
import 'package:my_habits/core/ui/shared/input_field.dart';
import 'package:my_habits/features/register/controller/register_controller.dart';

class Register extends GetView<RegisterController> {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(context) => Scaffold(
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
                              Common.signup,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.2,
                            Text(
                              Common.signupDescription,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            )),
                      ],
                    ),
                    _formInput(),
                    _buttonRegister(),
                    _textToLogin()
                  ],
                ),
              ),
            ],
          ),
        ),
      );

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
                  label: "Name",
                  controller: controller.nameController,
                )),
            FadeAnimation(
                1.2,
                InputFieldWidget(
                  validator: (value) => controller.emailValidation(value),
                  label: "Email",
                  controller: controller.emailController,
                )),
            FadeAnimation(
                1.3,
                InputFieldWidget(
                  validator: (value) => controller.passwordValidation(value),
                  label: "Password",
                  obscureText: true,
                  controller: controller.passwordController,
                )),
          ],
        ),
      ),
    );
  }

  FadeAnimation _buttonRegister() {
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
                onPressed: () => controller.signUp(),
                label: Common.signup,
                color: CustomColor.primaryColour,
                elevetion: 0,
              )),
        ));
  }

  FadeAnimation _textToLogin() {
    return FadeAnimation(
        1.5,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(Common.loginQuestion),
            GestureDetector(
                onTap: controller.navigateToLogin,
                child: const Text(
                  Common.login,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ))
          ],
        ));
  }
}
