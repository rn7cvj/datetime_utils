import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayAddExtension on TimeOfDay {
  /// Adds the specified number of minutes to this TimeOfDay.
  TimeOfDay addMinutes(int count) {
    return TimeOfDayAddCalculator.addMinutes(this, count);
  }
}
