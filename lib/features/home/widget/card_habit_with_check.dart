import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/home/controller/home_controller.dart';
import 'package:sizer/sizer.dart';

class CardHabitWithCheck extends GetWidget<HomeController> {
  const CardHabitWithCheck({Key? key, required this.check, required this.name})
      : super(
          key: key,
        );

  final String name;
  final bool check;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: CustomColor.secondaryColour,
      ),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
                activeColor: CustomColor.primaryColour,
                shape: const CircleBorder(),
                tristate: false,
                value: check,
                onChanged: (val) => controller.handleCheck(val)),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18.sp, color: CustomColor.primaryColour),
          ),
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
