import '../../calculators/date_time.dart';
import 'round_first_extension.dart';

extension DateTimeInfoExtension on DateTime {
  /// Returns the number of days in the month of this DateTime.
  int getDaysInMonth() {
    return DateTimeInfoCalculator.getDaysCountInMonth(year, month);
  }

  /// Returns the week number of this DateTime within the year.
  int getWeekNumber() {
    return DateTimeInfoCalculator.getWeekNumber(this);
  }

  /// Возвращает первый день следующего месяца
  DateTime nextMonthDay(int monthCount) {
    var date = roundToFirstDayOfMonth();

    for (var i = 0; i < monthCount; i++) {
      final daysInMonth = date.getDaysInMonth();
      date = date.add(Duration(days: daysInMonth));
    }

    return date;
  }
}
