final class DateTimeSubstructCalculator {
  /// Subtracts the specified number of months from the given DateTime.
  static DateTime subtractMonths(DateTime date, int count) {
    assert(count >= 0);

    count = count * -1;

    final newYear =
        date.year + count ~/ 12 + ((date.month + count % 12) > 12 ? 1 : 0);

    final newMonth = (date.month + count) % 12 == 0
        ? 12
        : (date.month + count) % 12;

    return DateTime(newYear, newMonth, date.day);
  }
}
