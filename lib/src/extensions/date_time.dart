import 'package:flutter/material.dart';

export 'date_time/add_extension.dart';
export 'date_time/clamp_extension.dart';
export 'date_time/is_extension.dart';
export 'date_time/round_first_extension.dart';
export 'date_time/round_last_extension.dart';
export 'date_time/subtract_extension.dart';

extension DateTimeBaseExtension on DateTime {
  /// Returns a new DateTime object representing the current date at midnight (00:00:00).
  DateTime today() {
    return DateTime(year, month, day);
  }

  /// Returns a TimeOfDay object representing the time part of this DateTime.
  TimeOfDay getTimeOfDayOnly() {
    return TimeOfDay(hour: hour, minute: minute);
  }
}
