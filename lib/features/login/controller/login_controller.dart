import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/error_codes.dart';
import 'package:my_habits/core/constants/error_message.dart';
import 'package:my_habits/core/ui/shared/custom_snackbar.dart';

class LoginController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  String? errorMessage;

  navigateToRegister() async {
    await Get.delete<LoginController>();
    await Get.toNamed("/register");
  }

  emailValidation(String? value) {
    if (value!.isEmpty) {
      errorMessage = ErrorMessage.enterYourEmail;
      return (errorMessage);
    }
    // reg expression for email validation
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      errorMessage = ErrorMessage.entervalidEmail;
      return (errorMessage);
    }
    return null;
  }

  passwordValidation(String? value) {
    RegExp regex = RegExp(r'^.{6,}$');
    if (value!.isEmpty) {
      errorMessage = ErrorMessage.enterYourPassword;
      return (errorMessage);
    }
    if (!regex.hasMatch(value)) {
      errorMessage = ErrorMessage.enterValidatePassword;
      return (errorMessage);
    }
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      try {
        errorMessage = '';
        await _auth
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then((uid) async {
          await Get.delete<LoginController>();
          await Get.offNamed('/home');
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case ErrorCodes.invalidEmail:
            errorMessage = ErrorMessage.emailMalformed;
            break;
          case ErrorCodes.wrongPassword:
            errorMessage = ErrorMessage.passwordWrong;
            break;
          case ErrorCodes.userNotFound:
            errorMessage = ErrorMessage.emailDoesntNotExist;
            break;
          case ErrorCodes.userDisabled:
            errorMessage = ErrorMessage.emailHasDisabled;
            break;
          case ErrorCodes.toManyRequest:
            errorMessage = ErrorMessage.tooManyRequest;
            break;
          case ErrorCodes.operationNotAllowed:
            errorMessage = ErrorMessage.operationNotAllowed;
            break;
          default:
            errorMessage = ErrorMessage.defaultError;
        }
        CustomSnackbar().errorTop(errorMessage.toString());
      }
    }
  }
}
