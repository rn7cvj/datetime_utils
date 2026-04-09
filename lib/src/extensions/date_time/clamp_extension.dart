import '../../calculators/date_time.dart';

extension DateTimeClampExtension on DateTime {
  /// Returns this DateTime clamped between the provided bounds.
  DateTime clamp({DateTime? min, DateTime? max}) {
    return DateTimeClampCalculator.clamp(this, min: min, max: max);
  }
}
