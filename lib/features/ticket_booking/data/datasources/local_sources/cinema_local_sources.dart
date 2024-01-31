import 'dart:convert';

import 'package:book_my_movie/core/constant/constants.dart';
import 'package:book_my_movie/core/error/custom_error.dart';
import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:flutter/services.dart';

class CinemasLocalDataSources {
  Future<Result<CinemaListModel>> getCinemasList() async {
    try {
      /// Load the JSON data from the Cinema list file using rootBundle
      Map<String, dynamic> json =
          jsonDecode(await rootBundle.loadString(Constants.cinemasList));
      return Result(data: CinemaListModel.fromJson(json));
    } catch (e) {
      return Result(
        error: CustomError(
          message: 'Error fetching movies details: $e',
        ),
      );
    }
  }
}
