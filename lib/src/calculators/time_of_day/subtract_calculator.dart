import 'package:flutter/material.dart';

final class TimeOfDaySubtractCalculator {
  /// Returns the difference between two TimeOfDay values.
  static TimeOfDay difference(TimeOfDay time, TimeOfDay other) {
    final thisMinutes = time.hour * 60 + time.minute;
    final otherMinutes = other.hour * 60 + other.minute;
    final diff = thisMinutes - otherMinutes;

    return TimeOfDay(hour: diff ~/ 60, minute: diff % 60);
  }
}
