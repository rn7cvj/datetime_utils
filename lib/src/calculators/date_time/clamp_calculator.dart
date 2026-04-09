final class DateTimeClampCalculator {
  /// Clamps the given DateTime between the provided minimum and maximum bounds.
  static DateTime clamp(DateTime date, {DateTime? min, DateTime? max}) {
    assert(min == null || max == null || !min.isAfter(max));

    if (min != null && date.isBefore(min)) {
      return min;
    }

    if (max != null && date.isAfter(max)) {
      return max;
    }

    return date;
  }
}
