import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  errorTop(String message) {
    return Get.snackbar('Error', message.toString(),
        snackPosition: SnackPosition.TOP,
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 0.0, 16.0),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        backgroundColor: Colors.red,
        borderRadius: 6.0,
        icon: const Icon(Icons.warning_rounded));
  }
}
