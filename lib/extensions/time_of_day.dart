import 'package:flutter/material.dart';

extension TimeOfDateExtension on TimeOfDay {
  bool isBetween(TimeOfDay being, TimeOfDay end) {
    final thisMinutes = hour * 60 + minute;
    final startMinutes = being.hour * 60 + being.minute;
    final endMinutes = end.hour * 60 + end.minute;

    return thisMinutes >= startMinutes && thisMinutes < endMinutes;
  }

  TimeOfDay difference(TimeOfDay other) {
    final thisMinutes = hour * 60 + minute;
    final otherMinutes = other.hour * 60 + other.minute;

    final diff = thisMinutes - otherMinutes;

    final hours = diff ~/ 60;
    final minutes = diff % 60;

    return TimeOfDay(hour: hours, minute: minutes);
  }

  int get inMinutes {
    return hour * 60 + minute;
  }

  String formatTime() {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}
