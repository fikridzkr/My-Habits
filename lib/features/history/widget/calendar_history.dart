import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';
import 'package:my_habits/features/history/widget/calendar_widget.dart';
import 'package:my_habits/features/history/widget/card_habit.dart';
import 'package:sizer/sizer.dart';

class CalendarHistory extends GetWidget<HistoryController> {
  const CalendarHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: CustomColor.primaryColour,
              ),
              padding: EdgeInsets.all(1.h),
              child: const CalendarWidget()),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.h),
            child: Text('Habits Finished',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: CustomColor.primaryColour,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2)),
          ),
          const CardHabit(name: "Makan"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.h),
            child: Text('Habits Scheduled',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: CustomColor.primaryColour,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2)),
          ),
          const CardHabit(name: "Minum"),
        ],
      ),
    );
  }
}
