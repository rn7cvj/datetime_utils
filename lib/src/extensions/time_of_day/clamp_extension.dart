import 'package:flutter/material.dart';

import '../../calculators/time_of_day.dart';

extension TimeOfDayClampExtension on TimeOfDay {
  /// Returns this TimeOfDay clamped between the provided bounds.
  TimeOfDay clamp({TimeOfDay? min, TimeOfDay? max}) {
    return TimeOfDayClampCalculator.clamp(this, min: min, max: max);
  }
}
