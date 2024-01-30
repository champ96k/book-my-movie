// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImagesModel _$MovieImagesModelFromJson(Map<String, dynamic> json) {
  return _MovieImagesModel.fromJson(json);
}

/// @nodoc
mixin _$MovieImagesModel {
  List<Backdrop>? get backdrops => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Backdrop>? get logos => throw _privateConstructorUsedError;
  List<Backdrop>? get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImagesModelCopyWith<MovieImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImagesModelCopyWith<$Res> {
  factory $MovieImagesModelCopyWith(
          MovieImagesModel value, $Res Function(MovieImagesModel) then) =
      _$MovieImagesModelCopyWithImpl<$Res, MovieImagesModel>;
  @useResult
  $Res call(
      {List<Backdrop>? backdrops,
      int? id,
      List<Backdrop>? logos,
      List<Backdrop>? posters});
}

/// @nodoc
class _$MovieImagesModelCopyWithImpl<$Res, $Val extends MovieImagesModel>
    implements $MovieImagesModelCopyWith<$Res> {
  _$MovieImagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: freezed == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      posters: freezed == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImagesModelImplCopyWith<$Res>
    implements $MovieImagesModelCopyWith<$Res> {
  factory _$$MovieImagesModelImplCopyWith(_$MovieImagesModelImpl value,
          $Res Function(_$MovieImagesModelImpl) then) =
      __$$MovieImagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Backdrop>? backdrops,
      int? id,
      List<Backdrop>? logos,
      List<Backdrop>? posters});
}

/// @nodoc
class __$$MovieImagesModelImplCopyWithImpl<$Res>
    extends _$MovieImagesModelCopyWithImpl<$Res, _$MovieImagesModelImpl>
    implements _$$MovieImagesModelImplCopyWith<$Res> {
  __$$MovieImagesModelImplCopyWithImpl(_$MovieImagesModelImpl _value,
      $Res Function(_$MovieImagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_$MovieImagesModelImpl(
      backdrops: freezed == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImagesModelImpl implements _MovieImagesModel {
  const _$MovieImagesModelImpl(
      {final List<Backdrop>? backdrops,
      this.id,
      final List<Backdrop>? logos,
      final List<Backdrop>? posters})
      : _backdrops = backdrops,
        _logos = logos,
        _posters = posters;

  factory _$MovieImagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImagesModelImplFromJson(json);

  final List<Backdrop>? _backdrops;
  @override
  List<Backdrop>? get backdrops {
    final value = _backdrops;
    if (value == null) return null;
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  final List<Backdrop>? _logos;
  @override
  List<Backdrop>? get logos {
    final value = _logos;
    if (value == null) return null;
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Backdrop>? _posters;
  @override
  List<Backdrop>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieImagesModel(backdrops: $backdrops, id: $id, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImagesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      id,
      const DeepCollectionEquality().hash(_logos),
      const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImagesModelImplCopyWith<_$MovieImagesModelImpl> get copyWith =>
      __$$MovieImagesModelImplCopyWithImpl<_$MovieImagesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImagesModelImplToJson(
      this,
    );
  }
}

abstract class _MovieImagesModel implements MovieImagesModel {
  const factory _MovieImagesModel(
      {final List<Backdrop>? backdrops,
      final int? id,
      final List<Backdrop>? logos,
      final List<Backdrop>? posters}) = _$MovieImagesModelImpl;

  factory _MovieImagesModel.fromJson(Map<String, dynamic> json) =
      _$MovieImagesModelImpl.fromJson;

  @override
  List<Backdrop>? get backdrops;
  @override
  int? get id;
  @override
  List<Backdrop>? get logos;
  @override
  List<Backdrop>? get posters;
  @override
  @JsonKey(ignore: true)
  _$$MovieImagesModelImplCopyWith<_$MovieImagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Backdrop _$BackdropFromJson(Map<String, dynamic> json) {
  return _Backdrop.fromJson(json);
}

/// @nodoc
mixin _$Backdrop {
  @JsonKey(name: "aspect_ratio")
  double? get aspectRatio => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "iso_639_1")
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: "file_path")
  String? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackdropCopyWith<Backdrop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackdropCopyWith<$Res> {
  factory $BackdropCopyWith(Backdrop value, $Res Function(Backdrop) then) =
      _$BackdropCopyWithImpl<$Res, Backdrop>;
  @useResult
  $Res call(
      {@JsonKey(name: "aspect_ratio") double? aspectRatio,
      int? height,
      @JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "file_path") String? filePath,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount,
      int? width});
}

/// @nodoc
class _$BackdropCopyWithImpl<$Res, $Val extends Backdrop>
    implements $BackdropCopyWith<$Res> {
  _$BackdropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackdropImplCopyWith<$Res>
    implements $BackdropCopyWith<$Res> {
  factory _$$BackdropImplCopyWith(
          _$BackdropImpl value, $Res Function(_$BackdropImpl) then) =
      __$$BackdropImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "aspect_ratio") double? aspectRatio,
      int? height,
      @JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "file_path") String? filePath,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount,
      int? width});
}

/// @nodoc
class __$$BackdropImplCopyWithImpl<$Res>
    extends _$BackdropCopyWithImpl<$Res, _$BackdropImpl>
    implements _$$BackdropImplCopyWith<$Res> {
  __$$BackdropImplCopyWithImpl(
      _$BackdropImpl _value, $Res Function(_$BackdropImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_$BackdropImpl(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackdropImpl implements _Backdrop {
  const _$BackdropImpl(
      {@JsonKey(name: "aspect_ratio") this.aspectRatio,
      this.height,
      @JsonKey(name: "iso_639_1") this.iso6391,
      @JsonKey(name: "file_path") this.filePath,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "vote_count") this.voteCount,
      this.width});

  factory _$BackdropImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackdropImplFromJson(json);

  @override
  @JsonKey(name: "aspect_ratio")
  final double? aspectRatio;
  @override
  final int? height;
  @override
  @JsonKey(name: "iso_639_1")
  final String? iso6391;
  @override
  @JsonKey(name: "file_path")
  final String? filePath;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int? voteCount;
  @override
  final int? width;

  @override
  String toString() {
    return 'Backdrop(aspectRatio: $aspectRatio, height: $height, iso6391: $iso6391, filePath: $filePath, voteAverage: $voteAverage, voteCount: $voteCount, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackdropImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aspectRatio, height, iso6391,
      filePath, voteAverage, voteCount, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackdropImplCopyWith<_$BackdropImpl> get copyWith =>
      __$$BackdropImplCopyWithImpl<_$BackdropImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackdropImplToJson(
      this,
    );
  }
}

abstract class _Backdrop implements Backdrop {
  const factory _Backdrop(
      {@JsonKey(name: "aspect_ratio") final double? aspectRatio,
      final int? height,
      @JsonKey(name: "iso_639_1") final String? iso6391,
      @JsonKey(name: "file_path") final String? filePath,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "vote_count") final int? voteCount,
      final int? width}) = _$BackdropImpl;

  factory _Backdrop.fromJson(Map<String, dynamic> json) =
      _$BackdropImpl.fromJson;

  @override
  @JsonKey(name: "aspect_ratio")
  double? get aspectRatio;
  @override
  int? get height;
  @override
  @JsonKey(name: "iso_639_1")
  String? get iso6391;
  @override
  @JsonKey(name: "file_path")
  String? get filePath;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$BackdropImplCopyWith<_$BackdropImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
