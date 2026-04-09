import '../../calculators/date_time.dart';

extension DateTimeAddExtension on DateTime {
  /// Adds the specified number of months to this DateTime.
  DateTime addMonths(int count) {
    return DateTimeAddCalculator.addMonths(this, count);
  }
}
