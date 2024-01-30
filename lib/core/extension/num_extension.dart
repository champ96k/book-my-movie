extension NumberFormatter on num? {
  String formatNumber() {
    if (this == null) {
      return " ";
    } else if (this! < 1000) {
      return this!.toString();
    } else if (this! < 1000000) {
      double result = this! / 1000;
      return '${result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 1)}k';
    } else if (this! < 1000000000) {
      double result = this! / 1000000;
      return '${result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 1)}m';
    } else {
      double result = this! / 1000000000;
      return '${result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 1)}b';
    }
  }
}

extension MinutesToTimeString on int? {
  String toHoursAndMinutesString() {
    if (this == null || this! < 0) {
      return '';
    }

    if (this! < 60) {
      return '${this!}m';
    } else {
      final hours = this! ~/ 60;
      final minutes = this! % 60;
      final hoursString = hours > 0 ? '${hours}h ' : '';
      final minutesString = minutes > 0 ? '${minutes}m' : '';

      return '$hoursString$minutesString';
    }
  }
}
