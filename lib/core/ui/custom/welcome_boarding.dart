import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/animation/fade_animation.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/constants/image_constant.dart';
import 'package:my_habits/core/ui/shared/button.dart';

class WelcomeBoarding extends StatelessWidget {
  const WelcomeBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const FadeAnimation(
                      1,
                      Text(
                        Common.welcome,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.2,
                      Text(
                        Common.welcomeDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700], fontSize: 15),
                      )),
                ],
              ),
              FadeAnimation(
                  1.4,
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstants.onBoardingWelcome),
                            fit: BoxFit.contain)),
                  )),
              Column(
                children: <Widget>[
                  FadeAnimation(
                    1.5,
                    ButtonWidget.base(
                      onPressed: () {
                        Get.toNamed('/login');
                      },
                      label: Common.login,
                      sideBorder: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.6,
                      Container(
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
                            onPressed: () {
                              Get.toNamed('/register');
                            },
                            label: Common.signup,
                            color: CustomColor.primaryColour,
                            elevetion: 0,
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
