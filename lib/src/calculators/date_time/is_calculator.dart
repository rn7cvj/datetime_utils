final class DateTimeIsCalculator {
  /// Checks if the given year is a leap year.
  static bool isLeapYear(int year) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }

  /// Checks if the given DateTime is between the start and end DateTimes (exclusive).
  static bool isBetween(DateTime date, DateTime start, DateTime end) {
    return date.isAfter(start) && date.isBefore(end);
  }
}
