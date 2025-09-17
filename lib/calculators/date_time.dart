import '../extensions/date_time.dart';

final class DateTimeCalculator {
  /// Subtracts the specified number of months from the given DateTime.
  static DateTime subtractMonths(DateTime date, int count) {
    assert(count >= 0);

    count = count * -1;

    int newYear =
        date.year + count ~/ 12 + ((date.month + count % 12) > 12 ? 1 : 0);

    int newMonth = (date.month + count) % 12 == 0
        ? 12
        : (date.month + count) % 12;

    DateTime newData = DateTime(newYear, newMonth, date.day);

    return newData;
  }

  /// Adds the specified number of months to the given DateTime.
  static DateTime addMonths(DateTime date, int count) {
    assert(count >= 0);

    int newYear =
        date.year + count ~/ 12 + ((date.month + count % 12) > 12 ? 1 : 0);

    int newMonth = (date.month + count) % 12 == 0
        ? 12
        : (date.month + count) % 12;

    DateTime newData = DateTime(newYear, newMonth, date.day);

    return newData;
  }

  /// Rounds the given DateTime to the start of the day (00:00:00).
  static DateTime roundToDayStart(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Rounds the given DateTime to the end of the day (23:59:59).
  static DateTime roundToDayEnd(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  /// Rounds the given DateTime to the first day of the year.
  static DateTime roundToFirstDayOfYear(DateTime date) {
    return DateTime(date.year, 1, 1);
  }

  /// Rounds the given DateTime to the last day of the year.
  static DateTime roundToLastDayOfYear(DateTime date) {
    return DateTime(date.year, 12, 31);
  }

  /// Rounds the given DateTime to the first day of the month.
  static DateTime roundToFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Rounds the given DateTime to the last day of the month.
  static DateTime roundToLastDayOfMonth(DateTime date) {
    final daysInMonth = getDaysCountInMonth(date.year, date.month);
    return DateTime(date.year, date.month, daysInMonth);
  }

  /// Rounds the given DateTime to the first day of the week (Monday).
  static DateTime roundToFirstDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToSubtract = dayOfWeek - 1;
    return date.subtract(Duration(days: daysToSubtract));
  }

  /// Rounds the given DateTime to the last day of the week (Sunday).
  static DateTime roundToLastDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToAdd = 7 - dayOfWeek;
    return date.add(Duration(days: daysToAdd));
  }

  /// Returns the number of days in the specified month and year.
  static int getDaysCountInMonth(int year, int month) {
    List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    if (month == 2 && isLeapYear(year)) {
      return 29;
    }

    return daysInMonth[month - 1];
  }

  /// Returns the week number of the given DateTime within the year.
  static int getWeekNumber(DateTime date) {
    final firstDayOfYear = DateTime(date.year, 1, 1);

    final firstSundayOfYear = firstDayOfYear.roundToLastDayOfWeek();
    final lastWeekDay = date.roundToLastDayOfWeek();

    final diff = lastWeekDay.difference(firstSundayOfYear).inDays;

    return (diff ~/ 7) + 1;
  }

  /// Checks if the given year is a leap year.
  static bool isLeapYear(int year) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }

  /// Checks if the given DateTime is between the start and end DateTimes (exclusive).
  static bool isBetween(DateTime date, DateTime start, DateTime end) {
    return date.isAfter(start) && date.isBefore(end);
  }
}
