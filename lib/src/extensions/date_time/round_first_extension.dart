import '../../calculators/date_time.dart';

extension DateTimeRoundFirstExtension on DateTime {
  /// Returns a new DateTime rounded to the first day of the year.
  DateTime roundToFirstDayOfYear() {
    return DateTimeRoundFirstCalculator.roundToFirstDayOfYear(this);
  }

  /// Returns a new DateTime rounded to the start of the day (00:00:00).
  DateTime roundToDayStart() {
    return DateTimeRoundFirstCalculator.roundToDayStart(this);
  }

  /// Returns a new DateTime rounded to the first day of the month.
  DateTime roundToFirstDayOfMonth() {
    return DateTimeRoundFirstCalculator.roundToFirstDayOfMonth(this);
  }

  /// Returns a new DateTime rounded to the first day of the week (Monday).
  DateTime roundToFirstDayOfWeek() {
    return DateTimeRoundFirstCalculator.roundToFirstDayOfWeek(this);
  }
}
