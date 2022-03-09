import 'package:flutter/material.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/ui/custom/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Common.myHabits,
      theme: ThemeData(
        primarySwatch: CustomColor.primaryColour,
      ),
      home: const SplashScreen(),
    );
  }
}
