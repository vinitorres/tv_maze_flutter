// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TvShow {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImageSource get imageSource => throw _privateConstructorUsedError;
  DateTime? get airs => throw _privateConstructorUsedError;
  DateTime? get premiered => throw _privateConstructorUsedError;
  DateTime? get ended => throw _privateConstructorUsedError;
  Schedule? get schedule => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowCopyWith<TvShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowCopyWith<$Res> {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) then) =
      _$TvShowCopyWithImpl<$Res, TvShow>;
  @useResult
  $Res call(
      {int id,
      String name,
      ImageSource imageSource,
      DateTime? airs,
      DateTime? premiered,
      DateTime? ended,
      Schedule? schedule,
      List<String> genres,
      String summary});

  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$TvShowCopyWithImpl<$Res, $Val extends TvShow>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageSource = null,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? schedule = freezed,
    Object? genres = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageSource: null == imageSource
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as ImageSource,
      airs: freezed == airs
          ? _value.airs
          : airs // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      premiered: freezed == premiered
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ended: freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TvShowImplCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$$TvShowImplCopyWith(
          _$TvShowImpl value, $Res Function(_$TvShowImpl) then) =
      __$$TvShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      ImageSource imageSource,
      DateTime? airs,
      DateTime? premiered,
      DateTime? ended,
      Schedule? schedule,
      List<String> genres,
      String summary});

  @override
  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$$TvShowImplCopyWithImpl<$Res>
    extends _$TvShowCopyWithImpl<$Res, _$TvShowImpl>
    implements _$$TvShowImplCopyWith<$Res> {
  __$$TvShowImplCopyWithImpl(
      _$TvShowImpl _value, $Res Function(_$TvShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageSource = null,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? schedule = freezed,
    Object? genres = null,
    Object? summary = null,
  }) {
    return _then(_$TvShowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageSource: null == imageSource
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as ImageSource,
      airs: freezed == airs
          ? _value.airs
          : airs // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      premiered: freezed == premiered
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ended: freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TvShowImpl extends _TvShow {
  const _$TvShowImpl(
      {required this.id,
      required this.name,
      required this.imageSource,
      this.airs,
      this.premiered,
      this.ended,
      this.schedule,
      final List<String> genres = const [],
      required this.summary})
      : _genres = genres,
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final ImageSource imageSource;
  @override
  final DateTime? airs;
  @override
  final DateTime? premiered;
  @override
  final DateTime? ended;
  @override
  final Schedule? schedule;
  final List<String> _genres;
  @override
  @JsonKey()
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String summary;

  @override
  String toString() {
    return 'TvShow(id: $id, name: $name, imageSource: $imageSource, airs: $airs, premiered: $premiered, ended: $ended, schedule: $schedule, genres: $genres, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageSource, imageSource) ||
                other.imageSource == imageSource) &&
            (identical(other.airs, airs) || other.airs == airs) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageSource,
      airs,
      premiered,
      ended,
      schedule,
      const DeepCollectionEquality().hash(_genres),
      summary);

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      __$$TvShowImplCopyWithImpl<_$TvShowImpl>(this, _$identity);
}

abstract class _TvShow extends TvShow {
  const factory _TvShow(
      {required final int id,
      required final String name,
      required final ImageSource imageSource,
      final DateTime? airs,
      final DateTime? premiered,
      final DateTime? ended,
      final Schedule? schedule,
      final List<String> genres,
      required final String summary}) = _$TvShowImpl;
  const _TvShow._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  ImageSource get imageSource;
  @override
  DateTime? get airs;
  @override
  DateTime? get premiered;
  @override
  DateTime? get ended;
  @override
  Schedule? get schedule;
  @override
  List<String> get genres;
  @override
  String get summary;

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
