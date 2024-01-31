// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CinemaListModel _$CinemaListModelFromJson(Map<String, dynamic> json) {
  return _CinemaListModel.fromJson(json);
}

/// @nodoc
mixin _$CinemaListModel {
  @JsonKey(name: "cinemas")
  List<Cinema>? get cinemas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CinemaListModelCopyWith<CinemaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaListModelCopyWith<$Res> {
  factory $CinemaListModelCopyWith(
          CinemaListModel value, $Res Function(CinemaListModel) then) =
      _$CinemaListModelCopyWithImpl<$Res, CinemaListModel>;
  @useResult
  $Res call({@JsonKey(name: "cinemas") List<Cinema>? cinemas});
}

/// @nodoc
class _$CinemaListModelCopyWithImpl<$Res, $Val extends CinemaListModel>
    implements $CinemaListModelCopyWith<$Res> {
  _$CinemaListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cinemas = freezed,
  }) {
    return _then(_value.copyWith(
      cinemas: freezed == cinemas
          ? _value.cinemas
          : cinemas // ignore: cast_nullable_to_non_nullable
              as List<Cinema>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CinemaListModelImplCopyWith<$Res>
    implements $CinemaListModelCopyWith<$Res> {
  factory _$$CinemaListModelImplCopyWith(_$CinemaListModelImpl value,
          $Res Function(_$CinemaListModelImpl) then) =
      __$$CinemaListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "cinemas") List<Cinema>? cinemas});
}

/// @nodoc
class __$$CinemaListModelImplCopyWithImpl<$Res>
    extends _$CinemaListModelCopyWithImpl<$Res, _$CinemaListModelImpl>
    implements _$$CinemaListModelImplCopyWith<$Res> {
  __$$CinemaListModelImplCopyWithImpl(
      _$CinemaListModelImpl _value, $Res Function(_$CinemaListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cinemas = freezed,
  }) {
    return _then(_$CinemaListModelImpl(
      cinemas: freezed == cinemas
          ? _value._cinemas
          : cinemas // ignore: cast_nullable_to_non_nullable
              as List<Cinema>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemaListModelImpl implements _CinemaListModel {
  const _$CinemaListModelImpl(
      {@JsonKey(name: "cinemas") final List<Cinema>? cinemas})
      : _cinemas = cinemas;

  factory _$CinemaListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemaListModelImplFromJson(json);

  final List<Cinema>? _cinemas;
  @override
  @JsonKey(name: "cinemas")
  List<Cinema>? get cinemas {
    final value = _cinemas;
    if (value == null) return null;
    if (_cinemas is EqualUnmodifiableListView) return _cinemas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CinemaListModel(cinemas: $cinemas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemaListModelImpl &&
            const DeepCollectionEquality().equals(other._cinemas, _cinemas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cinemas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemaListModelImplCopyWith<_$CinemaListModelImpl> get copyWith =>
      __$$CinemaListModelImplCopyWithImpl<_$CinemaListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemaListModelImplToJson(
      this,
    );
  }
}

abstract class _CinemaListModel implements CinemaListModel {
  const factory _CinemaListModel(
          {@JsonKey(name: "cinemas") final List<Cinema>? cinemas}) =
      _$CinemaListModelImpl;

  factory _CinemaListModel.fromJson(Map<String, dynamic> json) =
      _$CinemaListModelImpl.fromJson;

  @override
  @JsonKey(name: "cinemas")
  List<Cinema>? get cinemas;
  @override
  @JsonKey(ignore: true)
  _$$CinemaListModelImplCopyWith<_$CinemaListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cinema _$CinemaFromJson(Map<String, dynamic> json) {
  return _Cinema.fromJson(json);
}

/// @nodoc
mixin _$Cinema {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "non_cancellable")
  bool? get nonCancellable => throw _privateConstructorUsedError;
  @JsonKey(name: "show_times")
  List<ShowTime>? get showTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CinemaCopyWith<Cinema> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaCopyWith<$Res> {
  factory $CinemaCopyWith(Cinema value, $Res Function(Cinema) then) =
      _$CinemaCopyWithImpl<$Res, Cinema>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "non_cancellable") bool? nonCancellable,
      @JsonKey(name: "show_times") List<ShowTime>? showTimes});
}

/// @nodoc
class _$CinemaCopyWithImpl<$Res, $Val extends Cinema>
    implements $CinemaCopyWith<$Res> {
  _$CinemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? nonCancellable = freezed,
    Object? showTimes = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      nonCancellable: freezed == nonCancellable
          ? _value.nonCancellable
          : nonCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      showTimes: freezed == showTimes
          ? _value.showTimes
          : showTimes // ignore: cast_nullable_to_non_nullable
              as List<ShowTime>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CinemaImplCopyWith<$Res> implements $CinemaCopyWith<$Res> {
  factory _$$CinemaImplCopyWith(
          _$CinemaImpl value, $Res Function(_$CinemaImpl) then) =
      __$$CinemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "non_cancellable") bool? nonCancellable,
      @JsonKey(name: "show_times") List<ShowTime>? showTimes});
}

/// @nodoc
class __$$CinemaImplCopyWithImpl<$Res>
    extends _$CinemaCopyWithImpl<$Res, _$CinemaImpl>
    implements _$$CinemaImplCopyWith<$Res> {
  __$$CinemaImplCopyWithImpl(
      _$CinemaImpl _value, $Res Function(_$CinemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? nonCancellable = freezed,
    Object? showTimes = freezed,
  }) {
    return _then(_$CinemaImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      nonCancellable: freezed == nonCancellable
          ? _value.nonCancellable
          : nonCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      showTimes: freezed == showTimes
          ? _value._showTimes
          : showTimes // ignore: cast_nullable_to_non_nullable
              as List<ShowTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemaImpl implements _Cinema {
  const _$CinemaImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "non_cancellable") this.nonCancellable,
      @JsonKey(name: "show_times") final List<ShowTime>? showTimes})
      : _showTimes = showTimes;

  factory _$CinemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemaImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "non_cancellable")
  final bool? nonCancellable;
  final List<ShowTime>? _showTimes;
  @override
  @JsonKey(name: "show_times")
  List<ShowTime>? get showTimes {
    final value = _showTimes;
    if (value == null) return null;
    if (_showTimes is EqualUnmodifiableListView) return _showTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cinema(name: $name, address: $address, location: $location, nonCancellable: $nonCancellable, showTimes: $showTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.nonCancellable, nonCancellable) ||
                other.nonCancellable == nonCancellable) &&
            const DeepCollectionEquality()
                .equals(other._showTimes, _showTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, location,
      nonCancellable, const DeepCollectionEquality().hash(_showTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemaImplCopyWith<_$CinemaImpl> get copyWith =>
      __$$CinemaImplCopyWithImpl<_$CinemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemaImplToJson(
      this,
    );
  }
}

abstract class _Cinema implements Cinema {
  const factory _Cinema(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "address") final String? address,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "non_cancellable") final bool? nonCancellable,
          @JsonKey(name: "show_times") final List<ShowTime>? showTimes}) =
      _$CinemaImpl;

  factory _Cinema.fromJson(Map<String, dynamic> json) = _$CinemaImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "non_cancellable")
  bool? get nonCancellable;
  @override
  @JsonKey(name: "show_times")
  List<ShowTime>? get showTimes;
  @override
  @JsonKey(ignore: true)
  _$$CinemaImplCopyWith<_$CinemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowTime _$ShowTimeFromJson(Map<String, dynamic> json) {
  return _ShowTime.fromJson(json);
}

/// @nodoc
mixin _$ShowTime {
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "sound")
  String? get sound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowTimeCopyWith<ShowTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowTimeCopyWith<$Res> {
  factory $ShowTimeCopyWith(ShowTime value, $Res Function(ShowTime) then) =
      _$ShowTimeCopyWithImpl<$Res, ShowTime>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "sound") String? sound});
}

/// @nodoc
class _$ShowTimeCopyWithImpl<$Res, $Val extends ShowTime>
    implements $ShowTimeCopyWith<$Res> {
  _$ShowTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sound = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowTimeImplCopyWith<$Res>
    implements $ShowTimeCopyWith<$Res> {
  factory _$$ShowTimeImplCopyWith(
          _$ShowTimeImpl value, $Res Function(_$ShowTimeImpl) then) =
      __$$ShowTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "sound") String? sound});
}

/// @nodoc
class __$$ShowTimeImplCopyWithImpl<$Res>
    extends _$ShowTimeCopyWithImpl<$Res, _$ShowTimeImpl>
    implements _$$ShowTimeImplCopyWith<$Res> {
  __$$ShowTimeImplCopyWithImpl(
      _$ShowTimeImpl _value, $Res Function(_$ShowTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sound = freezed,
  }) {
    return _then(_$ShowTimeImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowTimeImpl implements _ShowTime {
  const _$ShowTimeImpl(
      {@JsonKey(name: "time") this.time, @JsonKey(name: "sound") this.sound});

  factory _$ShowTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowTimeImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "sound")
  final String? sound;

  @override
  String toString() {
    return 'ShowTime(time: $time, sound: $sound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowTimeImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.sound, sound) || other.sound == sound));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, sound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowTimeImplCopyWith<_$ShowTimeImpl> get copyWith =>
      __$$ShowTimeImplCopyWithImpl<_$ShowTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowTimeImplToJson(
      this,
    );
  }
}

abstract class _ShowTime implements ShowTime {
  const factory _ShowTime(
      {@JsonKey(name: "time") final String? time,
      @JsonKey(name: "sound") final String? sound}) = _$ShowTimeImpl;

  factory _ShowTime.fromJson(Map<String, dynamic> json) =
      _$ShowTimeImpl.fromJson;

  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "sound")
  String? get sound;
  @override
  @JsonKey(ignore: true)
  _$$ShowTimeImplCopyWith<_$ShowTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
