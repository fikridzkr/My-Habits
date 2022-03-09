import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/ui/custom/splash_screen.dart';
import 'package:my_habits/features/login/controller/login_controller.dart';
import 'package:my_habits/features/login/login_bindings.dart';
import 'package:my_habits/features/login/login_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  Get.put(LoginController());

  runApp(GetMaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    initialRoute: '/main',
    defaultTransition: Transition.native,
    getPages: [
      GetPage(name: '/main', page: () => const SplashScreen()),
      GetPage(
        name: '/login',
        transition: Transition.cupertino,
        page: () => const Login(),
        binding: LoginBinding(),
      ),
    ],
  ));
}
