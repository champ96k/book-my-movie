extension DateTimeExt on DateTime {
  int get daysSince => difference(DateTime.now()).inDays;
  int get hoursSince => difference(DateTime.now()).inHours;
  int get minutesSince => difference(DateTime.now()).inMinutes;
  int get secondsSince => difference(DateTime.now()).inSeconds;
}
