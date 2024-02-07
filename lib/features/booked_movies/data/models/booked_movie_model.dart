import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'booked_movie_model.freezed.dart';
part 'booked_movie_model.g.dart';

@HiveType(typeId: 0)
@freezed
class BookedMovieModel with _$BookedMovieModel {
  factory BookedMovieModel({
    @HiveField(0) String? orderId,
    @HiveField(1) String? bookedDate,
    @HiveField(2) String? bookedTime,
    @HiveField(3) int? movieId,
    @HiveField(4) String? movieName,
    @HiveField(5) String? posterURL,
    @HiveField(6) String? langauge,
    @HiveField(7) String? cinemaName,
    @HiveField(8) String? cinemaAddress,
    @HiveField(9) List<String>? tickets,
    @HiveField(10) String? screenName,
    @HiveField(11) String? showDate,
    @HiveField(12) String? showTime,
  }) = _BookedMovieModel;

  factory BookedMovieModel.fromJson(Map<String, dynamic> json) =>
      _$BookedMovieModelFromJson(json);
}
