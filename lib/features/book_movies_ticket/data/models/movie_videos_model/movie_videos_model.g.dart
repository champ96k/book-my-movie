// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_videos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieVideosModelImpl _$$MovieVideosModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieVideosModelImpl(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieVideosModelImplToJson(
        _$MovieVideosModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };

_$ResultDataImpl _$$ResultDataImplFromJson(Map<String, dynamic> json) =>
    _$ResultDataImpl(
      iso6391: json['iso_639_1'] as String?,
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      site: $enumDecodeNullable(_$SiteEnumMap, json['site']),
      size: json['size'] as int?,
      type: json['type'] as String?,
      official: json['official'] as bool?,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ResultDataImplToJson(_$ResultDataImpl instance) =>
    <String, dynamic>{
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'site': _$SiteEnumMap[instance.site],
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt?.toIso8601String(),
      'id': instance.id,
    };

const _$SiteEnumMap = {
  Site.youTube: 'YouTube',
};
