import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';
import 'package:my_habits/features/history/widget/card_habit.dart';
import 'package:sizer/sizer.dart';

class AllHabits extends GetWidget<HistoryController> {
  const AllHabits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          CardHabit(
            name: 'Makan',
          ),
        ],
      ),
    );
  }
}
