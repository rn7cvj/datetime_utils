import 'package:flutter/material.dart';

final class TimeOfDayIsCalculator {
  /// Checks if the given TimeOfDay is between the start and end values.
  static bool isBetween(TimeOfDay time, TimeOfDay start, TimeOfDay end) {
    final thisMinutes = time.hour * 60 + time.minute;
    final startMinutes = start.hour * 60 + start.minute;
    final endMinutes = end.hour * 60 + end.minute;

    return thisMinutes >= startMinutes && thisMinutes < endMinutes;
  }
}
