# DateTime Utils

A comprehensive Flutter package that provides useful extensions and utilities for working with `DateTime` and `TimeOfDay` objects. This package simplifies common date and time operations, making it easier to manipulate, compare, and format dates and times in your Flutter applications.

## Features

- **DateTime Extensions**: Convenient methods for date manipulation, comparison, and rounding
- **TimeOfDay Extensions**: Utilities for time comparison, difference calculation, and formatting
- **Date Calculations**: Static methods for complex date arithmetic operations
- **Date Validation**: Methods to check if dates fall within ranges or meet specific criteria
- **Formatting**: Built-in time formatting utilities

### DateTime Extensions

- `today()` - Get the current date at midnight
- `addMonths()` / `subtractMonths()` - Add or subtract months from a date
- `isSameDay()` / `isSameMonth()` - Compare dates
- `isBetween()` - Check if a date is within a range
- `roundToFirstDayOfYear()` / `roundToLastDayOfYear()` - Round to year boundaries
- `roundToFirstDayOfMonth()` / `roundToLastDayOfMonth()` - Round to month boundaries
- `roundToFirstDayOfWeek()` / `roundToLastDayOfWeek()` - Round to week boundaries
- `roundToDayStart()` / `roundToDayEnd()` - Round to day boundaries
- `getDaysInMonth()` - Get the number of days in the current month
- `getWeekNumber()` - Get the week number within the year
- `isFirstDayOfYear()` / `isLastDayOfYear()` - Check year boundaries
- `isFirstDayOfMonth()` / `isLastDayOfMonth()` - Check month boundaries
- `isFirstDayOfWeek()` / `isLastDayOfWeek()` - Check week boundaries
- `nextMonthDay()` - Get the first day of the next month

### TimeOfDay Extensions

- `isBetween()` - Check if time is within a range
- `difference()` - Calculate time difference
- `inMinutes` - Get total minutes since midnight
- `formatTime()` - Format time as HH:MM string

### DateTime Calculator

- Static methods for date calculations and rounding operations

## Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  datetime_utils: ^1.0.0
```

Import the package in your Dart code:

```dart
import 'package:datetime_utils/datetime_utils.dart';
```

## Usage

### Basic DateTime Operations

```dart
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  DateTime now = DateTime.now();

  // Get today's date at midnight
  DateTime today = now.today();

  // Add 3 months to current date
  DateTime futureDate = now.addMonths(3);

  // Check if two dates are the same day
  bool sameDay = now.isSameDay(DateTime(2024, 9, 17));

  // Check if date is between two dates
  bool inRange = now.isBetween(DateTime(2024, 1, 1), DateTime(2024, 12, 31));

  // Get number of days in current month
  int daysInMonth = now.getDaysInMonth();

  // Round to first day of month
  DateTime firstOfMonth = now.roundToFirstDayOfMonth();

  // Get week number
  int weekNumber = now.getWeekNumber();
}
```

### TimeOfDay Operations

```dart
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  TimeOfDay currentTime = TimeOfDay.now();
  TimeOfDay startTime = TimeOfDay(hour: 9, minute: 0);
  TimeOfDay endTime = TimeOfDay(hour: 17, minute: 0);

  // Check if current time is between working hours
  bool isWorkingHours = currentTime.isBetween(startTime, endTime);

  // Calculate time difference
  TimeOfDay diff = endTime.difference(startTime);

  // Get total minutes since midnight
  int totalMinutes = currentTime.inMinutes;

  // Format time as string
  String formatted = currentTime.formatTime(); // "14:30"
}
```

### Using DateTime Calculator

```dart
import 'package:datetime_utils/datetime_utils.dart';

void main() {
  DateTime date = DateTime(2024, 9, 17);

  // Round to day start
  DateTime dayStart = DateTimeCalculator.roundToDayStart(date);

  // Round to last day of year
  DateTime yearEnd = DateTimeCalculator.roundToLastDayOfYear(date);

  // Get days in specific month
  int daysInFeb = DateTimeCalculator.getDaysCountInMonth(2024, 2); // 29 (leap year)

  // Check if year is leap year
  bool isLeap = DateTimeCalculator.isLeapYear(2024); // true
}
```

## Additional Information

This package is designed to be lightweight and easy to use, providing common date and time utilities that are frequently needed in Flutter applications. All methods are well-documented and include comprehensive error handling.

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Issues

If you find any bugs or have feature requests, please create an issue on the GitHub repository.

### License

This package is licensed under the MIT License.
