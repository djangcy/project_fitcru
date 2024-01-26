import 'package:intl/intl.dart';

class DateHelpers {
  static DateTime get startOfTheWeek {
    final DateTime date = DateTime.now();
    return DateTime(date.year, date.month, date.day - (date.weekday - 1));
  }

  static DateTime get endOfTheWeek {
    final DateTime date = DateTime.now();
    return DateTime(
      date.year,
      date.month,
      date.day + (DateTime.daysPerWeek - date.weekday),
    );
  }

  static DateTime dateOfWeekday(int weekday) {
    final DateTime date = DateTime.now();
    return DateTime(date.year, date.month, date.day - (date.weekday - weekday));
  }

  static bool isThisWeek(DateTime date) {
    if (date.difference(startOfTheWeek) >= Duration.zero &&
        date.difference(endOfTheWeek) <= Duration.zero) {
      return true;
    } else {
      return false;
    }
  }

  static bool isToday(DateTime date) {
    final DateTime now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return true;
    } else {
      return false;
    }
  }

  static bool isSameDay(DateTime first, DateTime second) {
    if (first.year == second.year &&
        first.month == second.month &&
        first.day == second.day) {
      return true;
    } else {
      return false;
    }
  }

  static bool isBeforeToday(DateTime date) {
    final DateTime now = DateTime.now();
    return !isToday(date) && date.difference(now) <= Duration.zero;
  }

  static bool isAfterToday(DateTime date) {
    final DateTime now = DateTime.now();
    return !isToday(date) && date.difference(now) >= Duration.zero;
  }

  static bool isBeforeDate(DateTime before, DateTime date) {
    return !isSameDay(before, date) && before.difference(date) <= Duration.zero;
  }

  static bool isAfterDate(DateTime date, DateTime after) {
    return !isSameDay(date, after) && after.difference(date) >= Duration.zero;
  }

  static String shortDateString(DateTime date) {
    try {
      // Builds a string in the format: Weekday,
      //  Day Abbr_Month. (Thursday, 11 November)
      String dateString = '${DateFormat('EEEE').format(date)}, ';
      dateString += '${DateFormat('d').format(date)} ';
      dateString += DateFormat('LLL').format(date);
      return dateString;
    } catch (e) {
      return e.toString();
    }
  }

  static String longDateString(DateTime date) {
    try {
      // Builds a string in the format: Day Month Year. (11 November 2021)
      String dateString = '${DateFormat('d').format(date)} ';
      dateString += '${DateFormat('MMMM').format(date)} ';
      dateString += DateFormat('y').format(date);
      return dateString;
    } catch (e) {
      return e.toString();
    }
  }

  static String shortDayDateString(DateTime date) {
    try {
      // Will be used for scheduler
      // Builds a string in the format:
      //  Hour:Minute on Weekday. (19:18 on Thursday)
      String dateString = DateFormat('Hm').format(date);
      dateString += ' on ';
      dateString += DateFormat('EEEE').format(date);
      return dateString;
    } catch (e) {
      return e.toString();
    }
  }
}
