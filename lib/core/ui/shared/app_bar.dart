import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends AppBar {
  AppBarWidget.base({Key? key})
      : super(
          key: key,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        );

  AppBarWidget.custom({Key? key, required title, actions})
      : super(
            key: key,
            elevation: 0,
            backgroundColor: Colors.white,
            // titleSpacing: 0.0,
            centerTitle: false,
            title: Transform(
              transform: Matrix4.translationValues(1.0.w, 0.0, 0.0),
              child: title,
            ),
            actions: actions);
}
