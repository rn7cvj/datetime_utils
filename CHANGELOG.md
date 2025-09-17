# Changelog

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
