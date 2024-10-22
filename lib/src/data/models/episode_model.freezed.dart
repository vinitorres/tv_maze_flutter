// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) {
  return _EpisodeModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  @JsonKey(name: 'image.medium', defaultValue: '')
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'image.original', defaultValue: '')
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'airstamp')
  DateTime? get airs => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this EpisodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeModelCopyWith<EpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeModelCopyWith<$Res> {
  factory $EpisodeModelCopyWith(
          EpisodeModel value, $Res Function(EpisodeModel) then) =
      _$EpisodeModelCopyWithImpl<$Res, EpisodeModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int number,
      int season,
      @JsonKey(name: 'image.medium', defaultValue: '') String thumb,
      @JsonKey(name: 'image.original', defaultValue: '') String poster,
      @JsonKey(name: 'airstamp') DateTime? airs,
      String summary});
}

/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res, $Val extends EpisodeModel>
    implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? season = null,
    Object? thumb = null,
    Object? poster = null,
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
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$EpisodeModelImplCopyWith<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  factory _$$EpisodeModelImplCopyWith(
          _$EpisodeModelImpl value, $Res Function(_$EpisodeModelImpl) then) =
      __$$EpisodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int number,
      int season,
      @JsonKey(name: 'image.medium', defaultValue: '') String thumb,
      @JsonKey(name: 'image.original', defaultValue: '') String poster,
      @JsonKey(name: 'airstamp') DateTime? airs,
      String summary});
}

/// @nodoc
class __$$EpisodeModelImplCopyWithImpl<$Res>
    extends _$EpisodeModelCopyWithImpl<$Res, _$EpisodeModelImpl>
    implements _$$EpisodeModelImplCopyWith<$Res> {
  __$$EpisodeModelImplCopyWithImpl(
      _$EpisodeModelImpl _value, $Res Function(_$EpisodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? season = null,
    Object? thumb = null,
    Object? poster = null,
    Object? airs = freezed,
    Object? summary = null,
  }) {
    return _then(_$EpisodeModelImpl(
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
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$EpisodeModelImpl extends _EpisodeModel {
  const _$EpisodeModelImpl(
      {required this.id,
      required this.name,
      required this.number,
      required this.season,
      @JsonKey(name: 'image.medium', defaultValue: '') required this.thumb,
      @JsonKey(name: 'image.original', defaultValue: '') required this.poster,
      @JsonKey(name: 'airstamp') this.airs,
      required this.summary})
      : super._();

  factory _$EpisodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int number;
  @override
  final int season;
  @override
  @JsonKey(name: 'image.medium', defaultValue: '')
  final String thumb;
  @override
  @JsonKey(name: 'image.original', defaultValue: '')
  final String poster;
  @override
  @JsonKey(name: 'airstamp')
  final DateTime? airs;
  @override
  final String summary;

  @override
  String toString() {
    return 'EpisodeModel(id: $id, name: $name, number: $number, season: $season, thumb: $thumb, poster: $poster, airs: $airs, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.airs, airs) || other.airs == airs) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, number, season, thumb, poster, airs, summary);

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeModelImplCopyWith<_$EpisodeModelImpl> get copyWith =>
      __$$EpisodeModelImplCopyWithImpl<_$EpisodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeModelImplToJson(
      this,
    );
  }
}

abstract class _EpisodeModel extends EpisodeModel {
  const factory _EpisodeModel(
      {required final int id,
      required final String name,
      required final int number,
      required final int season,
      @JsonKey(name: 'image.medium', defaultValue: '')
      required final String thumb,
      @JsonKey(name: 'image.original', defaultValue: '')
      required final String poster,
      @JsonKey(name: 'airstamp') final DateTime? airs,
      required final String summary}) = _$EpisodeModelImpl;
  const _EpisodeModel._() : super._();

  factory _EpisodeModel.fromJson(Map<String, dynamic> json) =
      _$EpisodeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get number;
  @override
  int get season;
  @override
  @JsonKey(name: 'image.medium', defaultValue: '')
  String get thumb;
  @override
  @JsonKey(name: 'image.original', defaultValue: '')
  String get poster;
  @override
  @JsonKey(name: 'airstamp')
  DateTime? get airs;
  @override
  String get summary;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeModelImplCopyWith<_$EpisodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
