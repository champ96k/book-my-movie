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
