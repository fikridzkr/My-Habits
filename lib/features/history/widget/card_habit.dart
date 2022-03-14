import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/home/controller/home_controller.dart';
import 'package:sizer/sizer.dart';

class CardHabit extends GetWidget<HomeController> {
  const CardHabit({Key? key, required this.name})
      : super(
          key: key,
        );

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: CustomColor.primaryColour,
      ),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style:
                TextStyle(fontSize: 18.sp, color: CustomColor.secondaryColour),
          ),
        ],
      ),
    );
  }
}
