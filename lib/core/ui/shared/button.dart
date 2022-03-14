import 'package:flutter/material.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends MaterialButton {
  ButtonWidget.base({
    required Function() onPressed,
    required String label,
    Color color = Colors.white,
    double? elevetion = 2,
    bool sideBorder = false,
    Key? key,
  }) : super(
          key: key,
          color: color,
          onPressed: onPressed,
          minWidth: double.infinity,
          height: 60,
          elevation: elevetion,
          shape: RoundedRectangleBorder(
              side: sideBorder
                  ? const BorderSide(color: Colors.black87)
                  : const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50)),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        );
  ButtonWidget.create({
    required Function() onPressed,
    required String label,
    Key? key,
  }) : super(
            key: key,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: CustomColor.primaryColour,
                  letterSpacing: 2),
            ),
            height: 60,
            onPressed: onPressed,
            color: CustomColor.secondaryColour,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)));
}
