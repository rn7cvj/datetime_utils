import '../../calculators/date_time.dart';

extension DateTimeSubtractExtension on DateTime {
  /// Subtracts the specified number of months from this DateTime.
  DateTime subtractMonths(int count) {
    return DateTimeSubtractCalculator.subtractMonths(this, count);
  }
}
