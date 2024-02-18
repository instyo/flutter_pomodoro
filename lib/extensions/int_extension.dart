extension IntX on int {
  String toDuration() {
    Duration duration = Duration(seconds: this);

    int minutes = (duration.inMinutes % 60);
    int remainingSeconds = (duration.inSeconds % 60);

    String minutesString = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsString =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';

    return '$minutesString:$secondsString';
  }
}
