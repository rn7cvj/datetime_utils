import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDaySubtractExtension on TimeOfDay {
  /// Returns the difference between this TimeOfDay and the other TimeOfDay as a new TimeOfDay.
  TimeOfDay difference(TimeOfDay other) {
    return TimeOfDaySubtractCalculator.difference(this, other);
  }
}
