// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookedMovieModel _$BookedMovieModelFromJson(Map<String, dynamic> json) {
  return _BookedMovieModel.fromJson(json);
}

/// @nodoc
mixin _$BookedMovieModel {
  @HiveField(0)
  String? get orderId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get bookedDate => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get bookedTime => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get movieId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get movieName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get posterURL => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get langauge => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get cinemaName => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get cinemaAddress => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String>? get tickets => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get screenName => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get showDate => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get showTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedMovieModelCopyWith<BookedMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedMovieModelCopyWith<$Res> {
  factory $BookedMovieModelCopyWith(
          BookedMovieModel value, $Res Function(BookedMovieModel) then) =
      _$BookedMovieModelCopyWithImpl<$Res, BookedMovieModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? orderId,
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
      @HiveField(12) String? showTime});
}

/// @nodoc
class _$BookedMovieModelCopyWithImpl<$Res, $Val extends BookedMovieModel>
    implements $BookedMovieModelCopyWith<$Res> {
  _$BookedMovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? bookedDate = freezed,
    Object? bookedTime = freezed,
    Object? movieId = freezed,
    Object? movieName = freezed,
    Object? posterURL = freezed,
    Object? langauge = freezed,
    Object? cinemaName = freezed,
    Object? cinemaAddress = freezed,
    Object? tickets = freezed,
    Object? screenName = freezed,
    Object? showDate = freezed,
    Object? showTime = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedDate: freezed == bookedDate
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedTime: freezed == bookedTime
          ? _value.bookedTime
          : bookedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterURL: freezed == posterURL
          ? _value.posterURL
          : posterURL // ignore: cast_nullable_to_non_nullable
              as String?,
      langauge: freezed == langauge
          ? _value.langauge
          : langauge // ignore: cast_nullable_to_non_nullable
              as String?,
      cinemaName: freezed == cinemaName
          ? _value.cinemaName
          : cinemaName // ignore: cast_nullable_to_non_nullable
              as String?,
      cinemaAddress: freezed == cinemaAddress
          ? _value.cinemaAddress
          : cinemaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      tickets: freezed == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      screenName: freezed == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      showDate: freezed == showDate
          ? _value.showDate
          : showDate // ignore: cast_nullable_to_non_nullable
              as String?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookedMovieModelImplCopyWith<$Res>
    implements $BookedMovieModelCopyWith<$Res> {
  factory _$$BookedMovieModelImplCopyWith(_$BookedMovieModelImpl value,
          $Res Function(_$BookedMovieModelImpl) then) =
      __$$BookedMovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? orderId,
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
      @HiveField(12) String? showTime});
}

/// @nodoc
class __$$BookedMovieModelImplCopyWithImpl<$Res>
    extends _$BookedMovieModelCopyWithImpl<$Res, _$BookedMovieModelImpl>
    implements _$$BookedMovieModelImplCopyWith<$Res> {
  __$$BookedMovieModelImplCopyWithImpl(_$BookedMovieModelImpl _value,
      $Res Function(_$BookedMovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? bookedDate = freezed,
    Object? bookedTime = freezed,
    Object? movieId = freezed,
    Object? movieName = freezed,
    Object? posterURL = freezed,
    Object? langauge = freezed,
    Object? cinemaName = freezed,
    Object? cinemaAddress = freezed,
    Object? tickets = freezed,
    Object? screenName = freezed,
    Object? showDate = freezed,
    Object? showTime = freezed,
  }) {
    return _then(_$BookedMovieModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedDate: freezed == bookedDate
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedTime: freezed == bookedTime
          ? _value.bookedTime
          : bookedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterURL: freezed == posterURL
          ? _value.posterURL
          : posterURL // ignore: cast_nullable_to_non_nullable
              as String?,
      langauge: freezed == langauge
          ? _value.langauge
          : langauge // ignore: cast_nullable_to_non_nullable
              as String?,
      cinemaName: freezed == cinemaName
          ? _value.cinemaName
          : cinemaName // ignore: cast_nullable_to_non_nullable
              as String?,
      cinemaAddress: freezed == cinemaAddress
          ? _value.cinemaAddress
          : cinemaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      tickets: freezed == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      screenName: freezed == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      showDate: freezed == showDate
          ? _value.showDate
          : showDate // ignore: cast_nullable_to_non_nullable
              as String?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookedMovieModelImpl implements _BookedMovieModel {
  _$BookedMovieModelImpl(
      {@HiveField(0) this.orderId,
      @HiveField(1) this.bookedDate,
      @HiveField(2) this.bookedTime,
      @HiveField(3) this.movieId,
      @HiveField(4) this.movieName,
      @HiveField(5) this.posterURL,
      @HiveField(6) this.langauge,
      @HiveField(7) this.cinemaName,
      @HiveField(8) this.cinemaAddress,
      @HiveField(9) final List<String>? tickets,
      @HiveField(10) this.screenName,
      @HiveField(11) this.showDate,
      @HiveField(12) this.showTime})
      : _tickets = tickets;

  factory _$BookedMovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedMovieModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? orderId;
  @override
  @HiveField(1)
  final String? bookedDate;
  @override
  @HiveField(2)
  final String? bookedTime;
  @override
  @HiveField(3)
  final int? movieId;
  @override
  @HiveField(4)
  final String? movieName;
  @override
  @HiveField(5)
  final String? posterURL;
  @override
  @HiveField(6)
  final String? langauge;
  @override
  @HiveField(7)
  final String? cinemaName;
  @override
  @HiveField(8)
  final String? cinemaAddress;
  final List<String>? _tickets;
  @override
  @HiveField(9)
  List<String>? get tickets {
    final value = _tickets;
    if (value == null) return null;
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(10)
  final String? screenName;
  @override
  @HiveField(11)
  final String? showDate;
  @override
  @HiveField(12)
  final String? showTime;

  @override
  String toString() {
    return 'BookedMovieModel(orderId: $orderId, bookedDate: $bookedDate, bookedTime: $bookedTime, movieId: $movieId, movieName: $movieName, posterURL: $posterURL, langauge: $langauge, cinemaName: $cinemaName, cinemaAddress: $cinemaAddress, tickets: $tickets, screenName: $screenName, showDate: $showDate, showTime: $showTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedMovieModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.bookedDate, bookedDate) ||
                other.bookedDate == bookedDate) &&
            (identical(other.bookedTime, bookedTime) ||
                other.bookedTime == bookedTime) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.posterURL, posterURL) ||
                other.posterURL == posterURL) &&
            (identical(other.langauge, langauge) ||
                other.langauge == langauge) &&
            (identical(other.cinemaName, cinemaName) ||
                other.cinemaName == cinemaName) &&
            (identical(other.cinemaAddress, cinemaAddress) ||
                other.cinemaAddress == cinemaAddress) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.screenName, screenName) ||
                other.screenName == screenName) &&
            (identical(other.showDate, showDate) ||
                other.showDate == showDate) &&
            (identical(other.showTime, showTime) ||
                other.showTime == showTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      bookedDate,
      bookedTime,
      movieId,
      movieName,
      posterURL,
      langauge,
      cinemaName,
      cinemaAddress,
      const DeepCollectionEquality().hash(_tickets),
      screenName,
      showDate,
      showTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedMovieModelImplCopyWith<_$BookedMovieModelImpl> get copyWith =>
      __$$BookedMovieModelImplCopyWithImpl<_$BookedMovieModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedMovieModelImplToJson(
      this,
    );
  }
}

abstract class _BookedMovieModel implements BookedMovieModel {
  factory _BookedMovieModel(
      {@HiveField(0) final String? orderId,
      @HiveField(1) final String? bookedDate,
      @HiveField(2) final String? bookedTime,
      @HiveField(3) final int? movieId,
      @HiveField(4) final String? movieName,
      @HiveField(5) final String? posterURL,
      @HiveField(6) final String? langauge,
      @HiveField(7) final String? cinemaName,
      @HiveField(8) final String? cinemaAddress,
      @HiveField(9) final List<String>? tickets,
      @HiveField(10) final String? screenName,
      @HiveField(11) final String? showDate,
      @HiveField(12) final String? showTime}) = _$BookedMovieModelImpl;

  factory _BookedMovieModel.fromJson(Map<String, dynamic> json) =
      _$BookedMovieModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get orderId;
  @override
  @HiveField(1)
  String? get bookedDate;
  @override
  @HiveField(2)
  String? get bookedTime;
  @override
  @HiveField(3)
  int? get movieId;
  @override
  @HiveField(4)
  String? get movieName;
  @override
  @HiveField(5)
  String? get posterURL;
  @override
  @HiveField(6)
  String? get langauge;
  @override
  @HiveField(7)
  String? get cinemaName;
  @override
  @HiveField(8)
  String? get cinemaAddress;
  @override
  @HiveField(9)
  List<String>? get tickets;
  @override
  @HiveField(10)
  String? get screenName;
  @override
  @HiveField(11)
  String? get showDate;
  @override
  @HiveField(12)
  String? get showTime;
  @override
  @JsonKey(ignore: true)
  _$$BookedMovieModelImplCopyWith<_$BookedMovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
