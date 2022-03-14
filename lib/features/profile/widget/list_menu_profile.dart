import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/profile/controller/profile_controller.dart';
import 'package:sizer/sizer.dart';

class ListMenuProfile extends GetWidget<ProfileController> {
  const ListMenuProfile({Key? key})
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
        child: ListView(
          children: _listMenu(),
          shrinkWrap: true,
        ));
  }

  _listMenu() {
    return [
      ListTile(
        leading: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blue,
          ),
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 7.w,
          ),
          padding: const EdgeInsets.all(5),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color: CustomColor.secondaryColour,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 2),
        ),
      ),
      const Divider(
        thickness: 1.2,
      ),
      ListTile(
        leading: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.deepPurple,
          ),
          child: Icon(
            Icons.share,
            color: Colors.white,
            size: 7.w,
          ),
          padding: const EdgeInsets.all(5),
        ),
        title: Text(
          'Share With Friends',
          style: TextStyle(
              color: CustomColor.secondaryColour,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 2),
        ),
      ),
      const Divider(
        thickness: 1.2,
      ),
      ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.green[800],
          ),
          child: Icon(
            Icons.star,
            color: Colors.white,
            size: 7.w,
          ),
          padding: const EdgeInsets.all(5),
        ),
        title: Text(
          'Rate Us',
          style: TextStyle(
              color: CustomColor.secondaryColour,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 2),
        ),
      ),
      const Divider(
        thickness: 1.2,
      ),
      ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.red[600],
          ),
          child: Icon(
            Icons.logout,
            color: Colors.white,
            size: 7.w,
          ),
          padding: const EdgeInsets.all(5),
        ),
        title: Text(
          'Logout',
          style: TextStyle(
              color: CustomColor.secondaryColour,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 2),
        ),
      ),
      const Divider(
        thickness: 1.2,
      ),
    ];
  }
}
