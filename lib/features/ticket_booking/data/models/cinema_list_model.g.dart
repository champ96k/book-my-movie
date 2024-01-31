// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CinemaListModelImpl _$$CinemaListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CinemaListModelImpl(
      cinemas: (json['cinemas'] as List<dynamic>?)
          ?.map((e) => Cinema.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CinemaListModelImplToJson(
        _$CinemaListModelImpl instance) =>
    <String, dynamic>{
      'cinemas': instance.cinemas,
    };

_$CinemaImpl _$$CinemaImplFromJson(Map<String, dynamic> json) => _$CinemaImpl(
      name: json['name'] as String?,
      address: json['address'] as String?,
      location: json['location'] as String?,
      nonCancellable: json['non_cancellable'] as bool?,
      showTimes: (json['show_times'] as List<dynamic>?)
          ?.map((e) => ShowTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CinemaImplToJson(_$CinemaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'location': instance.location,
      'non_cancellable': instance.nonCancellable,
      'show_times': instance.showTimes,
    };

_$ShowTimeImpl _$$ShowTimeImplFromJson(Map<String, dynamic> json) =>
    _$ShowTimeImpl(
      time: json['time'] as String?,
      sound: json['sound'] as String?,
    );

Map<String, dynamic> _$$ShowTimeImplToJson(_$ShowTimeImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'sound': instance.sound,
    };
