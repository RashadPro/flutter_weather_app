import 'package:intl/intl.dart';

class DateConstants {
  static final DateFormat timeFormat = DateFormat.jm();
  static final DateFormat dayFormat = DateFormat.EEEE();

  static String get getCurrentTime => timeFormat.format(DateTime.now());

  static String formatDay(DateTime date) {
    return dayFormat.format(date);
  }
}
