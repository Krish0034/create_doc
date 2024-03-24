import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String formattedDate() {
    final dateFormatter = DateFormat('yyyy-MM-dd');
    return dateFormatter.format(this);
  }

  String formattedTime() {
    final timeFormatter = DateFormat('HH:mm:ss');
    return timeFormatter.format(this);
  }
}