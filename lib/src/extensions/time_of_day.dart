import 'package:flutter/material.dart';

import '../calculators/time_of_day.dart';

extension TimeOfDateExtension on TimeOfDay {
  /// Checks if this TimeOfDay is between the start and end TimeOfDay (inclusive start, exclusive end).
  bool isBetween(TimeOfDay being, TimeOfDay end) {
    return TimeOfDayIsCalculator.isBetween(this, being, end);
  }

  /// Returns the difference between this TimeOfDay and the other TimeOfDay as a new TimeOfDay.
  TimeOfDay difference(TimeOfDay other) {
    return TimeOfDaySubstructCalculator.difference(this, other);
  }

  /// Returns the total minutes since midnight for this TimeOfDay.
  int get inMinutes {
    return TimeOfDayClampCalculator.inMinutes(this);
  }

  /// Formats this TimeOfDay as a string in HH:MM format.
  String formatTime() {
    return TimeOfDayClampCalculator.formatTime(this);
  }
}
