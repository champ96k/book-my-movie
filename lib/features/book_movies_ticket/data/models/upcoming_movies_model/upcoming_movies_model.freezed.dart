// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingMoviesModel _$UpcomingMoviesModelFromJson(Map<String, dynamic> json) {
  return _UpcomingMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$UpcomingMoviesModel {
  Dates? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<ResultData>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingMoviesModelCopyWith<UpcomingMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMoviesModelCopyWith<$Res> {
  factory $UpcomingMoviesModelCopyWith(
          UpcomingMoviesModel value, $Res Function(UpcomingMoviesModel) then) =
      _$UpcomingMoviesModelCopyWithImpl<$Res, UpcomingMoviesModel>;
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      @JsonKey(name: "results") List<ResultData>? results,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_results") int? totalResults});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$UpcomingMoviesModelCopyWithImpl<$Res, $Val extends UpcomingMoviesModel>
    implements $UpcomingMoviesModelCopyWith<$Res> {
  _$UpcomingMoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultData>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpcomingMoviesModelImplCopyWith<$Res>
    implements $UpcomingMoviesModelCopyWith<$Res> {
  factory _$$UpcomingMoviesModelImplCopyWith(_$UpcomingMoviesModelImpl value,
          $Res Function(_$UpcomingMoviesModelImpl) then) =
      __$$UpcomingMoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      @JsonKey(name: "results") List<ResultData>? results,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_results") int? totalResults});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$UpcomingMoviesModelImplCopyWithImpl<$Res>
    extends _$UpcomingMoviesModelCopyWithImpl<$Res, _$UpcomingMoviesModelImpl>
    implements _$$UpcomingMoviesModelImplCopyWith<$Res> {
  __$$UpcomingMoviesModelImplCopyWithImpl(_$UpcomingMoviesModelImpl _value,
      $Res Function(_$UpcomingMoviesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$UpcomingMoviesModelImpl(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultData>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingMoviesModelImpl implements _UpcomingMoviesModel {
  const _$UpcomingMoviesModelImpl(
      {this.dates,
      this.page,
      @JsonKey(name: "results") final List<ResultData>? results,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "total_results") this.totalResults})
      : _results = results;

  factory _$UpcomingMoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingMoviesModelImplFromJson(json);

  @override
  final Dates? dates;
  @override
  final int? page;
  final List<ResultData>? _results;
  @override
  @JsonKey(name: "results")
  List<ResultData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  @override
  @JsonKey(name: "total_results")
  final int? totalResults;

  @override
  String toString() {
    return 'UpcomingMoviesModel(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingMoviesModelImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingMoviesModelImplCopyWith<_$UpcomingMoviesModelImpl> get copyWith =>
      __$$UpcomingMoviesModelImplCopyWithImpl<_$UpcomingMoviesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingMoviesModelImplToJson(
      this,
    );
  }
}

abstract class _UpcomingMoviesModel implements UpcomingMoviesModel {
  const factory _UpcomingMoviesModel(
          {final Dates? dates,
          final int? page,
          @JsonKey(name: "results") final List<ResultData>? results,
          @JsonKey(name: "total_pages") final int? totalPages,
          @JsonKey(name: "total_results") final int? totalResults}) =
      _$UpcomingMoviesModelImpl;

  factory _UpcomingMoviesModel.fromJson(Map<String, dynamic> json) =
      _$UpcomingMoviesModelImpl.fromJson;

  @override
  Dates? get dates;
  @override
  int? get page;
  @override
  @JsonKey(name: "results")
  List<ResultData>? get results;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(name: "total_results")
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingMoviesModelImplCopyWith<_$UpcomingMoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  @JsonKey(name: "maximum")
  DateTime? get maximum => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum")
  DateTime? get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call(
      {@JsonKey(name: "maximum") DateTime? maximum,
      @JsonKey(name: "minimum") DateTime? minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatesImplCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$DatesImplCopyWith(
          _$DatesImpl value, $Res Function(_$DatesImpl) then) =
      __$$DatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "maximum") DateTime? maximum,
      @JsonKey(name: "minimum") DateTime? minimum});
}

/// @nodoc
class __$$DatesImplCopyWithImpl<$Res>
    extends _$DatesCopyWithImpl<$Res, _$DatesImpl>
    implements _$$DatesImplCopyWith<$Res> {
  __$$DatesImplCopyWithImpl(
      _$DatesImpl _value, $Res Function(_$DatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$DatesImpl(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatesImpl implements _Dates {
  const _$DatesImpl(
      {@JsonKey(name: "maximum") this.maximum,
      @JsonKey(name: "minimum") this.minimum});

  factory _$DatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatesImplFromJson(json);

  @override
  @JsonKey(name: "maximum")
  final DateTime? maximum;
  @override
  @JsonKey(name: "minimum")
  final DateTime? minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      __$$DatesImplCopyWithImpl<_$DatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatesImplToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates(
      {@JsonKey(name: "maximum") final DateTime? maximum,
      @JsonKey(name: "minimum") final DateTime? minimum}) = _$DatesImpl;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$DatesImpl.fromJson;

  @override
  @JsonKey(name: "maximum")
  DateTime? get maximum;
  @override
  @JsonKey(name: "minimum")
  DateTime? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call(
      {bool? adult,
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
      @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl value, $Res Function(_$ResultDataImpl) then) =
      __$$ResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
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
      @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$ResultDataImpl>
    implements _$$ResultDataImplCopyWith<$Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl _value, $Res Function(_$ResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$ResultDataImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataImpl implements _ResultData {
  const _$ResultDataImpl(
      {this.adult,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "genre_ids") final List<int>? genreIds,
      this.id,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "original_title") this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "release_date") this.releaseDate,
      this.title,
      this.video,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "vote_count") this.voteCount})
      : _genreIds = genreIds;

  factory _$ResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "release_date")
  final DateTime? releaseDate;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int? voteCount;

  @override
  String toString() {
    return 'ResultData(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      __$$ResultDataImplCopyWithImpl<_$ResultDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataImplToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  const factory _ResultData(
      {final bool? adult,
      @JsonKey(name: "backdrop_path") final String? backdropPath,
      @JsonKey(name: "genre_ids") final List<int>? genreIds,
      final int? id,
      @JsonKey(name: "original_language") final String? originalLanguage,
      @JsonKey(name: "original_title") final String? originalTitle,
      final String? overview,
      final double? popularity,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "release_date") final DateTime? releaseDate,
      final String? title,
      final bool? video,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "vote_count") final int? voteCount}) = _$ResultDataImpl;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$ResultDataImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds;
  @override
  int? get id;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "release_date")
  DateTime? get releaseDate;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
