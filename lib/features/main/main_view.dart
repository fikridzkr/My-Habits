import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/features/history/history_view.dart';
import 'package:my_habits/features/home/home_view.dart';
import 'package:my_habits/features/main/controller/main_controller.dart';
import 'package:my_habits/features/main/widget/bottom_navigation_bar.dart';

class MyApp extends GetView<MainController> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatioBarWidget(),
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: const [Home(), History()],
          )),
    );
  }
}
