import '../extensions/date_time.dart';

final class DateTimeCalculator {
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

  static DateTime roundToDayStart(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  static DateTime roundToDayEnd(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  static DateTime roundToFirstDayOfYear(DateTime date) {
    return DateTime(date.year, 1, 1);
  }

  static DateTime roundToLastDayOfYear(DateTime date) {
    return DateTime(date.year, 12, 31);
  }

  static DateTime roundToFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  static DateTime roundToLastDayOfMonth(DateTime date) {
    final daysInMonth = getDaysCountInMonth(date.year, date.month);
    return DateTime(date.year, date.month, daysInMonth);
  }

  static DateTime roundToFirstDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToSubtract = dayOfWeek - 1;
    return date.subtract(Duration(days: daysToSubtract));
  }

  static DateTime roundToLastDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToAdd = 7 - dayOfWeek;
    return date.add(Duration(days: daysToAdd));
  }

  static int getDaysCountInMonth(int year, int month) {
    List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    if (month == 2 && isLeapYear(year)) {
      return 29;
    }

    return daysInMonth[month - 1];
  }

  static int getWeekNumber(DateTime date) {
    final firstDayOfYear = DateTime(date.year, 1, 1);

    final firstSundayOfYear = firstDayOfYear.roundToLastDayOfWeek();
    final lastWeekDay = date.roundToLastDayOfWeek();

    final diff = lastWeekDay.difference(firstSundayOfYear).inDays;

    return (diff ~/ 7) + 1;
  }

  static bool isLeapYear(int year) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }

  static bool isBetween(DateTime date, DateTime start, DateTime end) {
    return date.isAfter(start) && date.isBefore(end);
  }
}
