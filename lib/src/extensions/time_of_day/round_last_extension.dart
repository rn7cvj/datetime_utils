import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayRoundLastExtension on TimeOfDay {
  /// Returns this TimeOfDay rounded to the end of the hour.
  TimeOfDay roundToHourEnd() {
    return TimeOfDayRoundLastCalculator.roundToHourEnd(this);
  }
}
