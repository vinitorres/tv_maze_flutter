// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Episode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;
  DateTime? get airs => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {int id,
      String name,
      int number,
      int season,
      String? thumb,
      String? poster,
      DateTime? airs,
      String summary});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? season = null,
    Object? thumb = freezed,
    Object? poster = freezed,
    Object? airs = freezed,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      airs: freezed == airs
          ? _value.airs
          : airs // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int number,
      int season,
      String? thumb,
      String? poster,
      DateTime? airs,
      String summary});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? season = null,
    Object? thumb = freezed,
    Object? poster = freezed,
    Object? airs = freezed,
    Object? summary = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      airs: freezed == airs
          ? _value.airs
          : airs // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpisodeImpl extends _Episode {
  const _$EpisodeImpl(
      {required this.id,
      required this.name,
      required this.number,
      required this.season,
      this.thumb,
      this.poster,
      this.airs,
      required this.summary})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final int number;
  @override
  final int season;
  @override
  final String? thumb;
  @override
  final String? poster;
  @override
  final DateTime? airs;
  @override
  final String summary;

  @override
  String toString() {
    return 'Episode(id: $id, name: $name, number: $number, season: $season, thumb: $thumb, poster: $poster, airs: $airs, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.airs, airs) || other.airs == airs) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, number, season, thumb, poster, airs, summary);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);
}

abstract class _Episode extends Episode {
  const factory _Episode(
      {required final int id,
      required final String name,
      required final int number,
      required final int season,
      final String? thumb,
      final String? poster,
      final DateTime? airs,
      required final String summary}) = _$EpisodeImpl;
  const _Episode._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  int get number;
  @override
  int get season;
  @override
  String? get thumb;
  @override
  String? get poster;
  @override
  DateTime? get airs;
  @override
  String get summary;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
