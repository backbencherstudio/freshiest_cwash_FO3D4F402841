import 'package:intl/intl.dart';
class Utils{
  static String formatDateTime(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd'); // Customize your format here
    return formatter.format(date);
  }
}