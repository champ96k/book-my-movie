// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_images_model.freezed.dart';
part 'movie_images_model.g.dart';

@freezed
class MovieImagesModel with _$MovieImagesModel {
  const factory MovieImagesModel({
    List<Backdrop>? backdrops,
    int? id,
    List<Backdrop>? logos,
    List<Backdrop>? posters,
  }) = _MovieImagesModel;

  factory MovieImagesModel.fromJson(Map<String, dynamic> json) =>
      _$MovieImagesModelFromJson(json);
}

@freezed
class Backdrop with _$Backdrop {
  const factory Backdrop({
    @JsonKey(name: "aspect_ratio") double? aspectRatio,
    int? height,
    @JsonKey(name: "iso_639_1") String? iso6391,
    @JsonKey(name: "file_path") String? filePath,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
    int? width,
  }) = _Backdrop;

  factory Backdrop.fromJson(Map<String, dynamic> json) =>
      _$BackdropFromJson(json);
}
