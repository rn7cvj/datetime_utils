import 'package:flutter/material.dart';

final class TimeOfDayClampCalculator {
  /// Returns the total minutes since midnight for the given TimeOfDay.
  static int inMinutes(TimeOfDay time) {
    return time.hour * 60 + time.minute;
  }

  /// Formats the given TimeOfDay as a string in HH:MM format.
  static String formatTime(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
