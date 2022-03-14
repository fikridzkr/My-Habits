import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/profile/controller/profile_controller.dart';
import 'package:sizer/sizer.dart';

class CardProfile extends GetWidget<ProfileController> {
  const CardProfile({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: CustomColor.primaryColour,
        ),
        margin: EdgeInsets.symmetric(vertical: 1.h),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: Colors.grey[300],
              ),
              child: Icon(
                Icons.person,
                color: Colors.grey,
                size: 13.w,
              ),
              padding: const EdgeInsets.all(5),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Fikri Dzakir',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: CustomColor.secondaryColour,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Fikri@gmail.com',
                    style: TextStyle(color: CustomColor.secondaryColour),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
