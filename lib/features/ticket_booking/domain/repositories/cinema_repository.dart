// ignore_for_file: one_member_abstracts

import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';

abstract class CinemasRepository {
  Future<Result<CinemaListModel>> getCinemasList();
}
