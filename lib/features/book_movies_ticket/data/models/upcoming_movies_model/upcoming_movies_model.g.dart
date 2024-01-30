// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingMoviesModelImpl _$$UpcomingMoviesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingMoviesModelImpl(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$UpcomingMoviesModelImplToJson(
        _$UpcomingMoviesModelImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$DatesImpl _$$DatesImplFromJson(Map<String, dynamic> json) => _$DatesImpl(
      maximum: json['maximum'] == null
          ? null
          : DateTime.parse(json['maximum'] as String),
      minimum: json['minimum'] == null
          ? null
          : DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$$DatesImplToJson(_$DatesImpl instance) =>
    <String, dynamic>{
      'maximum': instance.maximum?.toIso8601String(),
      'minimum': instance.minimum?.toIso8601String(),
    };

_$ResultDataImpl _$$ResultDataImplFromJson(Map<String, dynamic> json) =>
    _$ResultDataImpl(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$ResultDataImplToJson(_$ResultDataImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate?.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
