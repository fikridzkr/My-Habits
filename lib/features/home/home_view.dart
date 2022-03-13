import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/ui/shared/app_bar.dart';
import 'package:my_habits/features/home/controller/home_controller.dart';
import 'package:my_habits/features/home/widget/body_home.dart';
import 'package:sizer/sizer.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: CustomColor.secondaryColour,
      appBar: AppBarWidget.custom(
        title: Obx(() => Text("Hello ${controller.loggedInUser.value.name} !",
            style: TextStyle(
                fontSize: 25.sp,
                color: CustomColor.primaryColour,
                fontWeight: FontWeight.w700,
                letterSpacing: 2))),
        actions: [
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
            child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                shape: const CircleBorder(),
                primary: CustomColor.primaryColour,
                onPrimary: CustomColor.secondaryColour,
              ),
            ),
          )
        ],
      ),
      body: const BodyHome());
}
