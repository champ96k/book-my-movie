// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_videos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieVideosModel _$MovieVideosModelFromJson(Map<String, dynamic> json) {
  return _MovieVideosModel.fromJson(json);
}

/// @nodoc
mixin _$MovieVideosModel {
  int? get id => throw _privateConstructorUsedError;
  List<ResultData>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideosModelCopyWith<MovieVideosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideosModelCopyWith<$Res> {
  factory $MovieVideosModelCopyWith(
          MovieVideosModel value, $Res Function(MovieVideosModel) then) =
      _$MovieVideosModelCopyWithImpl<$Res, MovieVideosModel>;
  @useResult
  $Res call({int? id, List<ResultData>? results});
}

/// @nodoc
class _$MovieVideosModelCopyWithImpl<$Res, $Val extends MovieVideosModel>
    implements $MovieVideosModelCopyWith<$Res> {
  _$MovieVideosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieVideosModelImplCopyWith<$Res>
    implements $MovieVideosModelCopyWith<$Res> {
  factory _$$MovieVideosModelImplCopyWith(_$MovieVideosModelImpl value,
          $Res Function(_$MovieVideosModelImpl) then) =
      __$$MovieVideosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<ResultData>? results});
}

/// @nodoc
class __$$MovieVideosModelImplCopyWithImpl<$Res>
    extends _$MovieVideosModelCopyWithImpl<$Res, _$MovieVideosModelImpl>
    implements _$$MovieVideosModelImplCopyWith<$Res> {
  __$$MovieVideosModelImplCopyWithImpl(_$MovieVideosModelImpl _value,
      $Res Function(_$MovieVideosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$MovieVideosModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieVideosModelImpl implements _MovieVideosModel {
  const _$MovieVideosModelImpl({this.id, final List<ResultData>? results})
      : _results = results;

  factory _$MovieVideosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieVideosModelImplFromJson(json);

  @override
  final int? id;
  final List<ResultData>? _results;
  @override
  List<ResultData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieVideosModel(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieVideosModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieVideosModelImplCopyWith<_$MovieVideosModelImpl> get copyWith =>
      __$$MovieVideosModelImplCopyWithImpl<_$MovieVideosModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieVideosModelImplToJson(
      this,
    );
  }
}

abstract class _MovieVideosModel implements MovieVideosModel {
  const factory _MovieVideosModel(
      {final int? id,
      final List<ResultData>? results}) = _$MovieVideosModelImpl;

  factory _MovieVideosModel.fromJson(Map<String, dynamic> json) =
      _$MovieVideosModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<ResultData>? get results;
  @override
  @JsonKey(ignore: true)
  _$$MovieVideosModelImplCopyWith<_$MovieVideosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  @JsonKey(name: "iso_639_1")
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: "iso_3166_1")
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  Site? get site => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get official => throw _privateConstructorUsedError;
  @JsonKey(name: "published_at")
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "iso_3166_1") String? iso31661,
      String? name,
      String? key,
      Site? site,
      int? size,
      String? type,
      bool? official,
      @JsonKey(name: "published_at") DateTime? publishedAt,
      String? id});
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
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "iso_3166_1") String? iso31661,
      String? name,
      String? key,
      Site? site,
      int? size,
      String? type,
      bool? official,
      @JsonKey(name: "published_at") DateTime? publishedAt,
      String? id});
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
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ResultDataImpl(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataImpl implements _ResultData {
  const _$ResultDataImpl(
      {@JsonKey(name: "iso_639_1") this.iso6391,
      @JsonKey(name: "iso_3166_1") this.iso31661,
      this.name,
      this.key,
      this.site,
      this.size,
      this.type,
      this.official,
      @JsonKey(name: "published_at") this.publishedAt,
      this.id});

  factory _$ResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataImplFromJson(json);

  @override
  @JsonKey(name: "iso_639_1")
  final String? iso6391;
  @override
  @JsonKey(name: "iso_3166_1")
  final String? iso31661;
  @override
  final String? name;
  @override
  final String? key;
  @override
  final Site? site;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final bool? official;
  @override
  @JsonKey(name: "published_at")
  final DateTime? publishedAt;
  @override
  final String? id;

  @override
  String toString() {
    return 'ResultData(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso6391, iso31661, name, key,
      site, size, type, official, publishedAt, id);

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
      {@JsonKey(name: "iso_639_1") final String? iso6391,
      @JsonKey(name: "iso_3166_1") final String? iso31661,
      final String? name,
      final String? key,
      final Site? site,
      final int? size,
      final String? type,
      final bool? official,
      @JsonKey(name: "published_at") final DateTime? publishedAt,
      final String? id}) = _$ResultDataImpl;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$ResultDataImpl.fromJson;

  @override
  @JsonKey(name: "iso_639_1")
  String? get iso6391;
  @override
  @JsonKey(name: "iso_3166_1")
  String? get iso31661;
  @override
  String? get name;
  @override
  String? get key;
  @override
  Site? get site;
  @override
  int? get size;
  @override
  String? get type;
  @override
  bool? get official;
  @override
  @JsonKey(name: "published_at")
  DateTime? get publishedAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
