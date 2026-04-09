import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayRoundFirstExtension on TimeOfDay {
  /// Returns this TimeOfDay rounded to the start of the hour.
  TimeOfDay roundToHourStart() {
    return TimeOfDayRoundFirstCalculator.roundToHourStart(this);
  }
}
