# Changelog

## [1.0.1] - 2026-04-09

### Changed

- Split `DateTime` and `TimeOfDay` calculators into grouped modules:
  - `add`
  - `subtract`
  - `is`
  - `round_first`
  - `round_last`
  - `clamp`
  - `info`
- Split `DateTime` and `TimeOfDay` extensions into the same grouped structure.
- Replaced the old `substruct` typo with `subtract` in file names, exports, and public class names.
- Reworked `clamp` calculators and extensions to provide real `clamp({min, max})` behavior.

### Added

- `DateTimeClampCalculator.clamp(date, {min, max})`
- `TimeOfDayClampCalculator.clamp(time, {min, max})`
- `DateTime.clamp({min, max})`
- `TimeOfDay.clamp({min, max})`
- `info` calculators and extensions for lookup-style helpers such as:
  - `getDaysInMonth()`
  - `getWeekNumber()`
  - `inMinutes`
  - `formatTime()`

### Documentation

- Updated `README.md` to match the current package structure and public API.

## [1.0.0] - 2025-09-17

### Added

- Initial release of datetime_utils package
- Comprehensive DateTime extensions with methods for:
  - Date manipulation (add/subtract months, rounding operations)
  - Date comparison (same day/month, between dates)
  - Boundary checks (first/last day of year/month/week)
  - Utility functions (days in month, week number)
- TimeOfDay extensions with methods for:
  - Time comparison and range checking
  - Time difference calculation
  - Time formatting and conversion to minutes
- DateTimeCalculator class with static methods for:
  - Date arithmetic operations
  - Date rounding utilities
  - Helper functions (leap year detection, days in month)

### Documentation

- Added comprehensive Dart doc comments to all public methods
- Updated README with detailed usage examples and feature descriptions
- Created complete package documentation

### Technical Details

- Compatible with Flutter SDK >= 1.17.0
- Dart SDK ^3.8.1
- Lightweight with no external dependencies beyond Flutter SDK
