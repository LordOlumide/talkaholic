import 'package:talkaholic/constants/date_time_formats.dart';

String formatLastContactTime(time) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);

  final timeCompareVar = DateTime(
      time.year, time.month, time.day);

  if (timeCompareVar == today) {
    return timeDateFormat.format(time);
  } else if (timeCompareVar == yesterday) {
    return 'Yesterday';
  } else {
    String day = dayDateFormat.format(time);
    String month = monthDateFormat.format(time);
    String year = yearDateFormat.format(time);
    return '$month/$day/${year.substring(2)}';
  }
}
