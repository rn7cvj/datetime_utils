import 'package:flutter/material.dart';

final class TimeOfDayClampCalculator {
  /// Clamps the given TimeOfDay between the provided minimum and maximum bounds.
  static TimeOfDay clamp(TimeOfDay time, {TimeOfDay? min, TimeOfDay? max}) {
    final timeMinutes = time.hour * 60 + time.minute;
    final minMinutes = min == null ? null : min.hour * 60 + min.minute;
    final maxMinutes = max == null ? null : max.hour * 60 + max.minute;

    assert(minMinutes == null || maxMinutes == null || minMinutes <= maxMinutes);

    if (min != null && timeMinutes < minMinutes!) {
      return min;
    }

    if (max != null && timeMinutes > maxMinutes!) {
      return max;
    }

    return time;
  }
}
