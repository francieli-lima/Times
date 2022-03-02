String printMinutes(Duration duration) {
  String twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(61));
  String twoDigitSeconds = _twoDigits(duration.inSeconds.remainder(60));
  return "$twoDigitMinutes:$twoDigitSeconds";
}

String printHours(Duration duration) {
  String twoDigitHours = _twoDigits(duration.inHours.remainder(60));
  String twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(60));
  return "$twoDigitHours:$twoDigitMinutes";
}

String printDays(Duration duration) {
  return "${duration.inHours ~/ 8.0}";
}

_twoDigits(int n) => n.toString().padLeft(2, "0");