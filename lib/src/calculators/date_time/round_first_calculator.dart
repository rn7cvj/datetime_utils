final class DateTimeRoundFirstCalculator {
  /// Rounds the given DateTime to the start of the day (00:00:00).
  static DateTime roundToDayStart(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Rounds the given DateTime to the first day of the year.
  static DateTime roundToFirstDayOfYear(DateTime date) {
    return DateTime(date.year, 1, 1);
  }

  /// Rounds the given DateTime to the first day of the month.
  static DateTime roundToFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Rounds the given DateTime to the first day of the week (Monday).
  static DateTime roundToFirstDayOfWeek(DateTime date) {
    final dayOfWeek = date.weekday;
    final daysToSubtract = dayOfWeek - 1;

    return date.subtract(Duration(days: daysToSubtract));
  }
}
