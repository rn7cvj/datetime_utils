import '../../calculators/date_time.dart';

extension DateTimeRoundLastExtension on DateTime {
  /// Returns a new DateTime rounded to the end of the day (23:59:59).
  DateTime roundToDayEnd() {
    return DateTimeRoundLastCalculator.roundToDayEnd(this);
  }

  /// Returns a new DateTime rounded to the last day of the year.
  DateTime roundToLastDayOfYear() {
    return DateTimeRoundLastCalculator.roundToLastDayOfYear(this);
  }

  /// Returns a new DateTime rounded to the last day of the month.
  DateTime roundToLastDayOfMonth() {
    return DateTimeRoundLastCalculator.roundToLastDayOfMonth(this);
  }

  /// Returns a new DateTime rounded to the last day of the week (Sunday).
  DateTime roundToLastDayOfWeek() {
    return DateTimeRoundLastCalculator.roundToLastDayOfWeek(this);
  }
}
