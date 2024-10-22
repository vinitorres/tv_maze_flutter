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
  String get posterUrl => throw _privateConstructorUsedError;
  DateTime? get airs => throw _privateConstructorUsedError;
  DateTime? get premiered => throw _privateConstructorUsedError;
  DateTime? get ended => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<Episode> get episodes => throw _privateConstructorUsedError;
  Schedule get schedule => throw _privateConstructorUsedError;

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
      String posterUrl,
      DateTime? airs,
      DateTime? premiered,
      DateTime? ended,
      List<String> genres,
      String summary,
      List<Episode> episodes,
      Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
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
    Object? posterUrl = null,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? genres = null,
    Object? summary = null,
    Object? episodes = null,
    Object? schedule = null,
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
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ) as $Val);
  }

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
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
      String posterUrl,
      DateTime? airs,
      DateTime? premiered,
      DateTime? ended,
      List<String> genres,
      String summary,
      List<Episode> episodes,
      Schedule schedule});

  @override
  $ScheduleCopyWith<$Res> get schedule;
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
    Object? posterUrl = null,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? genres = null,
    Object? summary = null,
    Object? episodes = null,
    Object? schedule = null,
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
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }
}

/// @nodoc

class _$TvShowImpl extends _TvShow {
  const _$TvShowImpl(
      {required this.id,
      required this.name,
      required this.posterUrl,
      this.airs,
      this.premiered,
      this.ended,
      required final List<String> genres,
      required this.summary,
      required final List<Episode> episodes,
      required this.schedule})
      : _genres = genres,
        _episodes = episodes,
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String posterUrl;
  @override
  final DateTime? airs;
  @override
  final DateTime? premiered;
  @override
  final DateTime? ended;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String summary;
  final List<Episode> _episodes;
  @override
  List<Episode> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'TvShow(id: $id, name: $name, posterUrl: $posterUrl, airs: $airs, premiered: $premiered, ended: $ended, genres: $genres, summary: $summary, episodes: $episodes, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.airs, airs) || other.airs == airs) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      posterUrl,
      airs,
      premiered,
      ended,
      const DeepCollectionEquality().hash(_genres),
      summary,
      const DeepCollectionEquality().hash(_episodes),
      schedule);

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
      required final String posterUrl,
      final DateTime? airs,
      final DateTime? premiered,
      final DateTime? ended,
      required final List<String> genres,
      required final String summary,
      required final List<Episode> episodes,
      required final Schedule schedule}) = _$TvShowImpl;
  const _TvShow._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get posterUrl;
  @override
  DateTime? get airs;
  @override
  DateTime? get premiered;
  @override
  DateTime? get ended;
  @override
  List<String> get genres;
  @override
  String get summary;
  @override
  List<Episode> get episodes;
  @override
  Schedule get schedule;

  /// Create a copy of TvShow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
