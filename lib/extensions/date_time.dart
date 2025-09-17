import 'package:flutter/material.dart';

import '../calculators/date_time.dart';

extension DateTimeExtension on DateTime {
  /// Returns a new DateTime object representing the current date at midnight (00:00:00).
  DateTime today() {
    return DateTime(year, month, day);
  }

  /// Subtracts the specified number of months from this DateTime.
  DateTime subtractMonths(int count) {
    return DateTimeCalculator.subtractMonths(this, count);
  }

  /// Adds the specified number of months to this DateTime.
  DateTime addMonths(int count) {
    return DateTimeCalculator.addMonths(this, count);
  }

  /// Returns a TimeOfDay object representing the time part of this DateTime.
  TimeOfDay getTimeOfDayOnly() {
    return TimeOfDay(hour: hour, minute: minute);
  }

  /// Checks if this DateTime represents the same day as the other DateTime.
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Checks if this DateTime represents the same month as the other DateTime.
  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  /// Checks if this DateTime is between the start and end DateTimes (inclusive).
  bool isBetween(DateTime start, DateTime end) {
    return DateTimeCalculator.isBetween(this, start, end);
  }

  /// Returns the number of days in the month of this DateTime.
  int getDaysInMonth() {
    return DateTimeCalculator.getDaysCountInMonth(year, month);
  }

  /// Returns the week number of this DateTime within the year.
  int getWeekNumber() {
    return DateTimeCalculator.getWeekNumber(this);
  }

  /// Returns a new DateTime rounded to the first day of the year.
  DateTime roundToFirstDayOfYear() {
    return DateTimeCalculator.roundToFirstDayOfYear(this);
  }

  /// Checks if this DateTime is the first day of the year.
  bool isFirstDayOfYear() {
    return month == 1 && day == 1;
  }

  /// Returns a new DateTime rounded to the start of the day (00:00:00).
  DateTime roundToDayStart() {
    return DateTimeCalculator.roundToDayStart(this);
  }

  /// Returns a new DateTime rounded to the end of the day (23:59:59).
  DateTime roundToDayEnd() {
    return DateTimeCalculator.roundToDayEnd(this);
  }

  /// Returns a new DateTime rounded to the last day of the year.
  DateTime roundToLastDayOfYear() {
    return DateTimeCalculator.roundToLastDayOfYear(this);
  }

  /// Checks if this DateTime is the last day of the year.
  bool isLastDayOfYear() {
    return month == 12 && day == 31;
  }

  /// Returns a new DateTime rounded to the first day of the month.
  DateTime roundToFirstDayOfMonth() {
    return DateTimeCalculator.roundToFirstDayOfMonth(this);
  }

  /// Checks if this DateTime is the first day of the month.
  bool isFirstDayOfMonth() {
    return day == 1;
  }

  /// Returns a new DateTime rounded to the last day of the month.
  DateTime roundToLastDayOfMonth() {
    return DateTimeCalculator.roundToLastDayOfMonth(this);
  }

  /// Checks if this DateTime is the last day of the month.
  bool isLastDayOfMonth() {
    final daysInMonth = getDaysInMonth();
    return day == daysInMonth;
  }

  /// Returns a new DateTime rounded to the first day of the week (Monday).
  DateTime roundToFirstDayOfWeek() {
    return DateTimeCalculator.roundToFirstDayOfWeek(this);
  }

  /// Checks if this DateTime is the first day of the week (Monday).
  bool isFirstDayOfWeek() {
    return weekday == DateTime.monday;
  }

  /// Returns a new DateTime rounded to the last day of the week (Sunday).
  DateTime roundToLastDayOfWeek() {
    return DateTimeCalculator.roundToLastDayOfWeek(this);
  }

  /// Checks if this DateTime is the last day of the week (Sunday).
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
