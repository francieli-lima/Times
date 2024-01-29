import 'package:intl/intl.dart';

import 'models/track.dart';

String printMinutes(Duration duration) {
  String twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(61));
  String twoDigitSeconds = _twoDigits(duration.inSeconds.remainder(60));
  return "$twoDigitMinutes:$twoDigitSeconds";
}

String printMinuteExtensive(Duration duration) {
  String twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(61));
  return "$twoDigitMinutes minutes";
}

String printHoursExtensive(Duration duration) {
  String twoDigitHours = _twoDigits(duration.inHours.remainder(60));
  return "$twoDigitHours hours";
}

String printHours(Duration duration) {
  String twoDigitHours = _twoDigits(duration.inHours.remainder(60));
  String twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(60));
  return "$twoDigitHours:$twoDigitMinutes";
}

String printDays(Duration duration) {
  return "${duration.inHours ~/ 8.0}";
}

String formatDate(DateTime dateTime) {
  final DateFormat formatter = DateFormat('MMM dd, yy');
  return formatter.format(dateTime);
}

String printDayOfWeek(DateTime dateTime) {
  final DateFormat formatter = DateFormat('EEEE');
  return formatter.format(dateTime);
}

String printTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('HH:mm');
  return formatter.format(dateTime);
}

String totalDuration(List<Track> tracks) {
  Duration? duration;
  for (var track in tracks) {
    duration = duration != null ? track.duration : (duration! + track.duration);
  }
  return duration != null ? duration.inDays.toString() : "";
}

_twoDigits(int n) => n.toString().padLeft(2, "0");
