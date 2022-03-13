import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_habits/core/ui/custom/splash_screen.dart';
import 'package:my_habits/core/ui/custom/welcome_boarding.dart';
import 'package:my_habits/features/home/home_bindings.dart';
import 'package:my_habits/features/home/home_view.dart';
import 'package:my_habits/features/login/login_bindings.dart';
import 'package:my_habits/features/login/login_view.dart';
import 'package:my_habits/features/register/register_bindings.dart';
import 'package:my_habits/features/register/register_view.dart';
import 'package:sizer/sizer.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Sizer(
    builder: (context, orientation, deviceType) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Fredoka'),
      initialRoute: '/',
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/main', page: () => const WelcomeBoarding()),
        GetPage(
          name: '/login',
          transition: Transition.cupertino,
          page: () => const Login(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/register',
          transition: Transition.cupertino,
          page: () => const Register(),
          binding: RegisterBinding(),
        ),
        GetPage(
          name: '/home',
          transition: Transition.cupertino,
          page: () => const Home(),
          binding: HomeBinding(),
        ),
      ],
    ),
  ));
}
