import 'is_calculator.dart';

final class DateTimeClampCalculator {
  /// Returns the number of days in the specified month and year.
  static int getDaysCountInMonth(int year, int month) {
    const daysInMonth = <int>[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    if (month == 2 && DateTimeIsCalculator.isLeapYear(year)) {
      return 29;
    }

    return daysInMonth[month - 1];
  }

  /// Returns the week number of the given DateTime within the year.
  static int getWeekNumber(DateTime date) {
    final firstDayOfYear = DateTime(date.year, 1, 1);
    final firstSundayOfYear = firstDayOfYear.add(
      Duration(days: 7 - firstDayOfYear.weekday),
    );
    final lastWeekDay = date.add(Duration(days: 7 - date.weekday));
    final diff = lastWeekDay.difference(firstSundayOfYear).inDays;

    return (diff ~/ 7) + 1;
  }
}
