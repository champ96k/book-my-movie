// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_movie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookedMovieModelAdapter extends TypeAdapter<BookedMovieModel> {
  @override
  final int typeId = 0;

  @override
  BookedMovieModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookedMovieModel(
      orderId: fields[0] as String?,
      bookedDate: fields[1] as String?,
      bookedTime: fields[2] as String?,
      movieId: fields[3] as int?,
      movieName: fields[4] as String?,
      posterURL: fields[5] as String?,
      langauge: fields[6] as String?,
      cinemaName: fields[7] as String?,
      cinemaAddress: fields[8] as String?,
      tickets: (fields[9] as List?)?.cast<String>(),
      screenName: fields[10] as String?,
      showDate: fields[11] as String?,
      showTime: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookedMovieModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.orderId)
      ..writeByte(1)
      ..write(obj.bookedDate)
      ..writeByte(2)
      ..write(obj.bookedTime)
      ..writeByte(3)
      ..write(obj.movieId)
      ..writeByte(4)
      ..write(obj.movieName)
      ..writeByte(5)
      ..write(obj.posterURL)
      ..writeByte(6)
      ..write(obj.langauge)
      ..writeByte(7)
      ..write(obj.cinemaName)
      ..writeByte(8)
      ..write(obj.cinemaAddress)
      ..writeByte(9)
      ..write(obj.tickets)
      ..writeByte(10)
      ..write(obj.screenName)
      ..writeByte(11)
      ..write(obj.showDate)
      ..writeByte(12)
      ..write(obj.showTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookedMovieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedMovieModelImpl _$$BookedMovieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedMovieModelImpl(
      orderId: json['orderId'] as String?,
      bookedDate: json['bookedDate'] as String?,
      bookedTime: json['bookedTime'] as String?,
      movieId: json['movieId'] as int?,
      movieName: json['movieName'] as String?,
      posterURL: json['posterURL'] as String?,
      langauge: json['langauge'] as String?,
      cinemaName: json['cinemaName'] as String?,
      cinemaAddress: json['cinemaAddress'] as String?,
      tickets:
          (json['tickets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      screenName: json['screenName'] as String?,
      showDate: json['showDate'] as String?,
      showTime: json['showTime'] as String?,
    );

Map<String, dynamic> _$$BookedMovieModelImplToJson(
        _$BookedMovieModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'bookedDate': instance.bookedDate,
      'bookedTime': instance.bookedTime,
      'movieId': instance.movieId,
      'movieName': instance.movieName,
      'posterURL': instance.posterURL,
      'langauge': instance.langauge,
      'cinemaName': instance.cinemaName,
      'cinemaAddress': instance.cinemaAddress,
      'tickets': instance.tickets,
      'screenName': instance.screenName,
      'showDate': instance.showDate,
      'showTime': instance.showTime,
    };
