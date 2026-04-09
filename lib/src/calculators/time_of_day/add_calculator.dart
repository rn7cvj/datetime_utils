import 'package:flutter/material.dart';

import 'clamp_calculator.dart';

final class TimeOfDayAddCalculator {
  /// Adds the specified number of minutes to the given TimeOfDay.
  static TimeOfDay addMinutes(TimeOfDay time, int count) {
    assert(count >= 0);

    final totalMinutes = TimeOfDayClampCalculator.inMinutes(time) + count;

    return TimeOfDay(
      hour: (totalMinutes ~/ 60) % 24,
      minute: totalMinutes % 60,
    );
  }
}
