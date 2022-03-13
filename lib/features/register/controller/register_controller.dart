import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/error_codes.dart';
import 'package:my_habits/core/constants/error_message.dart';
import 'package:my_habits/core/model/user_model.dart';
import 'package:my_habits/core/ui/shared/custom_snackbar.dart';

class RegisterController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  String? errorMessage;

  navigateToLogin() async {
    await Get.delete<RegisterController>();
    await Get.toNamed("/login");
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

  void signUp() async {
    if (formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then((value) => {_createUser()})
            .catchError((e) {
          CustomSnackbar().errorTop(e.message);
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

  _createUser() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = nameController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toJson());
    Get.offNamed('/home');
  }
}
