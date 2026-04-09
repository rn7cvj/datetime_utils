import 'package:flutter/material.dart';

final class TimeOfDayRoundFirstCalculator {
  /// Rounds the given TimeOfDay to the start of the hour.
  static TimeOfDay roundToHourStart(TimeOfDay time) {
    return TimeOfDay(hour: time.hour, minute: 0);
  }
}
