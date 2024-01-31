// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_list_model.freezed.dart';
part 'cinema_list_model.g.dart';

@freezed
class CinemaListModel with _$CinemaListModel {
  const factory CinemaListModel({
    @JsonKey(name: "cinemas") List<Cinema>? cinemas,
  }) = _CinemaListModel;

  factory CinemaListModel.fromJson(Map<String, dynamic> json) =>
      _$CinemaListModelFromJson(json);
}

@freezed
class Cinema with _$Cinema {
  const factory Cinema({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "non_cancellable") bool? nonCancellable,
    @JsonKey(name: "show_times") List<ShowTime>? showTimes,
  }) = _Cinema;

  factory Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);
}

@freezed
class ShowTime with _$ShowTime {
  const factory ShowTime({
    @JsonKey(name: "time") String? time,
    @JsonKey(name: "sound") String? sound,
  }) = _ShowTime;

  factory ShowTime.fromJson(Map<String, dynamic> json) =>
      _$ShowTimeFromJson(json);
}
