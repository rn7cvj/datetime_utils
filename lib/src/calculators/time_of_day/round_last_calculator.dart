import 'package:flutter/material.dart';

final class TimeOfDayRoundLastCalculator {
  /// Rounds the given TimeOfDay to the end of the hour.
  static TimeOfDay roundToHourEnd(TimeOfDay time) {
    return TimeOfDay(hour: time.hour, minute: 59);
  }
}
