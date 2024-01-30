// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_videos_model.freezed.dart';
part 'movie_videos_model.g.dart';

@freezed
class MovieVideosModel with _$MovieVideosModel {
  const factory MovieVideosModel({
    int? id,
    List<ResultData>? results,
  }) = _MovieVideosModel;

  factory MovieVideosModel.fromJson(Map<String, dynamic> json) =>
      _$MovieVideosModelFromJson(json);
}

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    @JsonKey(name: "iso_639_1") String? iso6391,
    @JsonKey(name: "iso_3166_1") String? iso31661,
    String? name,
    String? key,
    Site? site,
    int? size,
    String? type,
    bool? official,
    @JsonKey(name: "published_at") DateTime? publishedAt,
    String? id,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);
}

enum Site {
  @JsonValue("YouTube")
  youTube
}

final siteValues = EnumValues({"YouTube": Site.youTube});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
