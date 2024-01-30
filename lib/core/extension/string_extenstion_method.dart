import 'package:book_my_movie/core/constant/utils_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExString on String {
  void showSnackBar(BuildContext context, {int milliseconds = 1400}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(this),
        duration: Duration(
          milliseconds: milliseconds,
        ),
      ),
    );
  }

  String formatDate({String defaultFormat = UtilsConstants.defaultFormat}) {
    try {
      if (this == "" || this == "null") {
        return "";
      }
      final formatter = DateFormat(defaultFormat);
      return formatter.format(DateTime.parse(this).toLocal());
    } on Exception catch (e) {
      debugPrint(e.toString());
      return "";
    }
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.toCapitalized())
      .join(" ");
}
