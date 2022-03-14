import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/constants/color_constant.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends GetWidget<HistoryController> {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        onDaySelected: (selectedDay, focusedDay) {
          print(selectedDay);
        },
        headerStyle: HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: CustomColor.secondaryColour,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: CustomColor.secondaryColour,
            ),
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              color: CustomColor.secondaryColour,
            )),
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: CustomColor.secondaryColour,
            shape: BoxShape.circle,
          ),
          todayTextStyle: TextStyle(
            color: CustomColor.primaryColour,
            fontSize: 16.0,
          ),
          defaultTextStyle: TextStyle(
            color: CustomColor.secondaryColour,
            fontSize: 16.0,
          ),
          weekendTextStyle: TextStyle(
            color: CustomColor.secondaryColour,
            fontSize: 16.0,
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: CustomColor.secondaryColour),
          weekendStyle: TextStyle(color: CustomColor.secondaryColour),
        ));
  }
}
