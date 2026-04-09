import 'clamp_calculator.dart';

final class DateTimeRoundLastCalculator {
  /// Rounds the given DateTime to the end of the day (23:59:59).
  static DateTime roundToDayEnd(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  /// Rounds the given DateTime to the last day of the year.
  static DateTime roundToLastDayOfYear(DateTime date) {
    return DateTime(date.year, 12, 31);
  }

  /// Rounds the given DateTime to the last day of the month.
  static DateTime roundToLastDayOfMonth(DateTime date) {
    final daysInMonth = DateTimeClampCalculator.getDaysCountInMonth(
      date.year,
      date.month,
    );

    return DateTime(date.year, date.month, daysInMonth);
  }

  /// Rounds the given DateTime to the last day of the week (Sunday).
  static DateTime roundToLastDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToAdd = 7 - dayOfWeek;

    return date.add(Duration(days: daysToAdd));
  }
}
