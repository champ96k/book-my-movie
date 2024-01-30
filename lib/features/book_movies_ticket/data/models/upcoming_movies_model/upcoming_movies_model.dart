// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_movies_model.freezed.dart';
part 'upcoming_movies_model.g.dart';

@freezed
class UpcomingMoviesModel with _$UpcomingMoviesModel {
  const factory UpcomingMoviesModel({
    Dates? dates,
    int? page,
    @JsonKey(name: "results") List<ResultData>? results,
    @JsonKey(name: "total_pages") int? totalPages,
    @JsonKey(name: "total_results") int? totalResults,
  }) = _UpcomingMoviesModel;

  factory UpcomingMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesModelFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    @JsonKey(name: "maximum") DateTime? maximum,
    @JsonKey(name: "minimum") DateTime? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    bool? adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "genre_ids") List<int>? genreIds,
    int? id,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "original_title") String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "release_date") DateTime? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);
}
