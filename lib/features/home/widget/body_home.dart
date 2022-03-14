import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/common_constant.dart';
import 'package:my_habits/core/ui/shared/button.dart';
import 'package:my_habits/features/home/widget/card_habit_with_check.dart';
import 'package:sizer/sizer.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/home/controller/home_controller.dart';

class BodyHome extends GetWidget<HomeController> {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: CustomColor.primaryColour,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Text(
                  Common.myHabits,
                  style: TextStyle(
                    color: CustomColor.secondaryColour,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                  ),
                ),
              ),
              DatePicker(
                DateTime.now(),
                width: 60,
                height: 80,
                controller: controller.datePickerController,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.white,
                selectedTextColor: CustomColor.primaryColour,
                monthTextStyle: TextStyle(
                    color: CustomColor.secondaryColour, fontFamily: 'Fredoka'),
                dayTextStyle: TextStyle(
                    color: CustomColor.secondaryColour, fontFamily: 'Fredoka'),
                dateTextStyle: TextStyle(
                    color: CustomColor.secondaryColour, fontFamily: 'Fredoka'),
                onDateChange: (date) {
                  controller.selectedDateValue = date;
                },
              ),
              Expanded(
                  child: ListView(
                children: [
                  for (final item in controller.data)
                    CardHabitWithCheck(check: item.check, name: item.name),
                  Divider(
                    color: CustomColor.secondaryColour,
                  ),
                  ButtonWidget.create(
                      onPressed: () => {}, label: Common.createHabit)
                ],
              ))
            ],
          ),
        ));
  }
}
