# datetime_utils

Flutter package with small, focused utilities for `DateTime` and `TimeOfDay`.

It provides:
- extension methods for everyday usage
- grouped calculators for static operations
- helpers for add, subtract, round, clamp, checks, and info lookup

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  datetime_utils: ^1.0.1
```

Import it:

```dart
import 'package:datetime_utils/datetime_utils.dart';
```

## DateTime Extensions

Available groups:
- base: `today()`, `getTimeOfDayOnly()`
- add: `addMonths()`
- subtract: `subtractMonths()`
- is: `isSameDay()`, `isSameMonth()`, `isSameYear()`, `isBetween()`, `isFirstDayOfYear()`, `isLastDayOfYear()`, `isFirstDayOfMonth()`, `isLastDayOfMonth()`, `isFirstDayOfWeek()`, `isLastDayOfWeek()`
- round first: `roundToDayStart()`, `roundToFirstDayOfYear()`, `roundToFirstDayOfMonth()`, `roundToFirstDayOfWeek()`
- round last: `roundToDayEnd()`, `roundToLastDayOfYear()`, `roundToLastDayOfMonth()`, `roundToLastDayOfWeek()`
- clamp: `clamp({min, max})`
- info: `getDaysInMonth()`, `getWeekNumber()`, `nextMonthDay()`

Example:

```dart
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  final now = DateTime.now();

  final today = now.today();
  final future = now.addMonths(3);
  final previous = now.subtractMonths(1);

  final isSameDay = now.isSameDay(DateTime(2026, 4, 9));
  final inRange = now.isBetween(
    DateTime(2026, 1, 1),
    DateTime(2026, 12, 31),
  );

  final firstDayOfMonth = now.roundToFirstDayOfMonth();
  final lastDayOfMonth = now.roundToLastDayOfMonth();

  final clamped = now.clamp(
    min: DateTime(2026, 1, 1),
    max: DateTime(2026, 12, 31),
  );

  final daysInMonth = now.getDaysInMonth();
  final weekNumber = now.getWeekNumber();
  final nextMonth = now.nextMonthDay(1);
  final time = now.getTimeOfDayOnly();
}
```

## TimeOfDay Extensions

Available groups:
- add: `addMinutes()`
- subtract: `difference()`
- is: `isBetween()`
- round first: `roundToHourStart()`
- round last: `roundToHourEnd()`
- clamp: `clamp({min, max})`
- info: `inMinutes`, `formatTime()`

Example:

```dart
import 'package:flutter/material.dart';
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  const current = TimeOfDay(hour: 14, minute: 30);
  const start = TimeOfDay(hour: 9, minute: 0);
  const end = TimeOfDay(hour: 18, minute: 0);

  final isWorkingHours = current.isBetween(start, end);
  final diff = end.difference(start);
  final added = current.addMinutes(45);

  final roundedStart = current.roundToHourStart();
  final roundedEnd = current.roundToHourEnd();

  final clamped = current.clamp(min: start, max: end);

  final totalMinutes = current.inMinutes;
  final formatted = current.formatTime();
}
```

## Static Calculators

You can also use grouped calculators directly.

### DateTime

```dart
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  final date = DateTime(2026, 4, 9, 15, 45);

  final added = DateTimeAddCalculator.addMonths(date, 2);
  final rounded = DateTimeRoundLastCalculator.roundToLastDayOfMonth(date);
  final clamped = DateTimeClampCalculator.clamp(
    date,
    min: DateTime(2026, 1, 1),
    max: DateTime(2026, 12, 31),
  );
  final days = DateTimeInfoCalculator.getDaysCountInMonth(2026, 2);
  final isLeap = DateTimeIsCalculator.isLeapYear(2028);
}
```

### TimeOfDay

```dart
import 'package:flutter/material.dart';
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  const time = TimeOfDay(hour: 14, minute: 30);

  final added = TimeOfDayAddCalculator.addMinutes(time, 15);
  final rounded = TimeOfDayRoundFirstCalculator.roundToHourStart(time);
  final clamped = TimeOfDayClampCalculator.clamp(
    time,
    min: const TimeOfDay(hour: 9, minute: 0),
    max: const TimeOfDay(hour: 18, minute: 0),
  );
  final minutes = TimeOfDayInfoCalculator.inMinutes(time);
}
```

## Notes

- `DateTime.isBetween()` is exclusive because it uses `isAfter()` and `isBefore()`.
- `TimeOfDay.isBetween()` is inclusive for start and exclusive for end.
- `clamp()` supports only `min`, only `max`, or both bounds.

## License

MIT
