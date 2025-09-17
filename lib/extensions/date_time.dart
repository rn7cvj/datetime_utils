import 'package:flutter/material.dart';

import '../calculators/date_time.dart';

extension DateTimeExtension on DateTime {
  DateTime today() {
    return DateTime(year, month, day);
  }

  DateTime subtractMonths(int count) {
    return DateTimeCalculator.subtractMonths(this, count);
  }

  DateTime addMonths(int count) {
    return DateTimeCalculator.addMonths(this, count);
  }

  TimeOfDay getTimeOfDayOnly() {
    return TimeOfDay(hour: hour, minute: minute);
  }

  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isBetween(DateTime start, DateTime end) {
    return DateTimeCalculator.isBetween(this, start, end);
  }

  int getDaysInMonth() {
    return DateTimeCalculator.getDaysCountInMonth(year, month);
  }

  int getWeekNumber() {
    return DateTimeCalculator.getWeekNumber(this);
  }

  DateTime roundToFirstDayOfYear() {
    return DateTimeCalculator.roundToFirstDayOfYear(this);
  }

  bool isFirstDayOfYear() {
    return month == 1 && day == 1;
  }

  DateTime roundToDayStart() {
    return DateTimeCalculator.roundToDayStart(this);
  }

  DateTime roundToDayEnd() {
    return DateTimeCalculator.roundToDayEnd(this);
  }

  DateTime roundToLastDayOfYear() {
    return DateTimeCalculator.roundToLastDayOfYear(this);
  }

  bool isLastDayOfYear() {
    return month == 12 && day == 31;
  }

  DateTime roundToFirstDayOfMonth() {
    return DateTimeCalculator.roundToFirstDayOfMonth(this);
  }

  bool isFirstDayOfMonth() {
    return day == 1;
  }

  DateTime roundToLastDayOfMonth() {
    return DateTimeCalculator.roundToLastDayOfMonth(this);
  }

  bool isLastDayOfMonth() {
    final daysInMonth = getDaysInMonth();
    return day == daysInMonth;
  }

  DateTime roundToFirstDayOfWeek() {
    return DateTimeCalculator.roundToFirstDayOfWeek(this);
  }

  bool isFirstDayOfWeek() {
    return weekday == DateTime.monday;
  }

  DateTime roundToLastDayOfWeek() {
    return DateTimeCalculator.roundToLastDayOfWeek(this);
  }

  bool isLastDayOfWeek() {
    return weekday == DateTime.sunday;
  }

  /// Возвращает первый день следующего месяца
  DateTime nextMonthDay(int monthCount) {
    DateTime date = roundToFirstDayOfMonth();

    for (int i = 0; i < monthCount; i++) {
      final daysInMonth = date.getDaysInMonth();
      date = date.add(Duration(days: daysInMonth));
    }
    return date;
  }
}
