import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/ui/shared/app_bar.dart';
import 'package:my_habits/features/profile/controller/profile_controller.dart';
import 'package:my_habits/features/profile/widget/card_profile.dart';
import 'package:my_habits/features/profile/widget/list_menu_profile.dart';
import 'package:sizer/sizer.dart';

class Profile extends GetView<ProfileController> {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.secondaryColour,
        appBar: AppBarWidget.custom(
            title: Text('Profile',
                style: TextStyle(
                    fontSize: 25.sp,
                    color: CustomColor.primaryColour,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2))),
        body: Container(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: [
              const CardProfile(),
              SizedBox(
                height: 2.h,
              ),
              const ListMenuProfile(),
              SizedBox(
                height: 1.h,
              ),
              Text(
                Common.version,
                style: TextStyle(
                    color: CustomColor.primaryColour,
                    fontWeight: FontWeight.w900,
                    fontSize: 12.sp,
                    letterSpacing: 2),
              )
            ],
          ),
        ));
  }
}
