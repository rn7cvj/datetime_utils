import '../../calculators/date_time.dart';
import 'info_extension.dart';

extension DateTimeIsExtension on DateTime {
  /// Checks if this DateTime represents the same day as the other DateTime.
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Checks if this DateTime represents the same month as the other DateTime.
  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }

  /// Checks if this DateTime is between the start and end DateTimes (inclusive).
  bool isBetween(DateTime start, DateTime end) {
    return DateTimeIsCalculator.isBetween(this, start, end);
  }

  /// Checks if this DateTime is the first day of the year.
  bool isFirstDayOfYear() {
    return month == 1 && day == 1;
  }

  /// Checks if this DateTime is the last day of the year.
  bool isLastDayOfYear() {
    return month == 12 && day == 31;
  }

  /// Checks if this DateTime is the first day of the month.
  bool isFirstDayOfMonth() {
    return day == 1;
  }

  /// Checks if this DateTime is the last day of the month.
  bool isLastDayOfMonth() {
    final daysInMonth = getDaysInMonth();
    return day == daysInMonth;
  }

  /// Checks if this DateTime is the first day of the week (Monday).
  bool isFirstDayOfWeek() {
    return weekday == DateTime.monday;
  }

  /// Checks if this DateTime is the last day of the week (Sunday).
  bool isLastDayOfWeek() {
    return weekday == DateTime.sunday;
  }
}
