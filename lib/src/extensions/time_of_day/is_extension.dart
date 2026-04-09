import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayIsExtension on TimeOfDay {
  /// Checks if this TimeOfDay is between the start and end TimeOfDay (inclusive start, exclusive end).
  bool isBetween(TimeOfDay being, TimeOfDay end) {
    return TimeOfDayIsCalculator.isBetween(this, being, end);
  }
}
