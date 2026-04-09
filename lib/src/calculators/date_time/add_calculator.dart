final class DateTimeAddCalculator {
  /// Adds the specified number of months to the given DateTime.
  static DateTime addMonths(DateTime date, int count) {
    assert(count >= 0);

    final newYear =
        date.year + count ~/ 12 + ((date.month + count % 12) > 12 ? 1 : 0);

    final newMonth = (date.month + count) % 12 == 0
        ? 12
        : (date.month + count) % 12;

    return DateTime(newYear, newMonth, date.day);
  }
}
