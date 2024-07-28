import 'package:intl/intl.dart';

// An extension to capitalize the first letter of a string
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  bool toBool() {
    return (int.tryParse(this) ?? 0) == 0 ? false : true;
  }

  double toDouble() {
    return double.tryParse(this) ?? 0.0;
  }

  int toInt() {
    return int.tryParse(this) ?? 0;
  }

  String toSnakeCase() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)?.toLowerCase()}';
    }).substring(1);
  }

  bool isValidShortTimeString() {
    final regExp = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]');
    return regExp.hasMatch(this);
  }
}

extension DateTimeExtension on DateTime {
  String toDateString() {
    return DateFormat('dd.MM.yyyy').format(this);
  }

  String toTimeString() {
    return DateFormat('HH:mm:ss').format(this);
  }

  String toShortTimeString() {
    return DateFormat('HH:mm').format(this);
  }

  static DateTime fromShortTimeString(String shorTimeString) {
    DateFormat format = DateFormat('HH:mm');
    assert(shorTimeString.isValidShortTimeString(), '$shorTimeString has no valid time format HH:mm');
    return format.parse(shorTimeString);
  }

  String toFineTimeString() {
    return DateFormat('dd.MM.yyyy-HH:mm:ss.SSS').format(this);
  }

  String toFineDateTimeString() {
    return DateFormat('HH:mm:ss.SSS').format(this);
  }

  String toDateTimeString() {
    return DateFormat('dd.MM.yyyy HH:mm').format(this);
  }

  DateTime fromDateTimeString(String dateTime) {
    return DateFormat('dd.MM.yyyy HH:mm').parse(dateTime);
  }

  String toFileString() {
    return DateFormat('yy-MM-dd_HH-mm').format(this);
  }
}

extension BoolExtension on bool {
  int toInt() {
    return this ? 1 : 0;
  }
}

extension IntExtension on int {
  bool toBool() {
    return this == 0 ? false : true;
  }
}
