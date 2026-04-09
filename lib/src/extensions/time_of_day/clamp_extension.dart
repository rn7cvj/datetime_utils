import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayClampExtension on TimeOfDay {
  /// Returns the total minutes since midnight for this TimeOfDay.
  int get inMinutes {
    return TimeOfDayClampCalculator.inMinutes(this);
  }

  /// Formats this TimeOfDay as a string in HH:MM format.
  String formatTime() {
    return TimeOfDayClampCalculator.formatTime(this);
  }
}
