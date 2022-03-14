import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/core/ui/shared/app_bar.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';
import 'package:my_habits/features/history/widget/all_habits.dart';
import 'package:my_habits/features/history/widget/calendar_history.dart';
import 'package:sizer/sizer.dart';

class History extends GetView<HistoryController> {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondaryColour,
      appBar: AppBarWidget.custom(
          title: Text('History',
              style: TextStyle(
                  fontSize: 25.sp,
                  color: CustomColor.primaryColour,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2))),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 1.h,
                  ),
                  TabBar(
                    indicatorColor: CustomColor.primaryColour,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    tabs: _listTabBar(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: <Widget>[CalendarHistory(), AllHabits()],
          ),
        ),
      ),
    );
  }

  List<Padding> _listTabBar() {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text("Calendar",
            style: TextStyle(
                fontSize: 14.sp,
                color: CustomColor.primaryColour,
                fontWeight: FontWeight.w700,
                letterSpacing: 2)),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text("All Habits",
            style: TextStyle(
                fontSize: 14.sp,
                color: CustomColor.primaryColour,
                fontWeight: FontWeight.w700,
                letterSpacing: 2)),
      ),
    ];
  }
}
