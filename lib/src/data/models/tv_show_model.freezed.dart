// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShowModel _$TvShowModelFromJson(Map<String, dynamic> json) {
  return _TvShowModel.fromJson(json);
}

/// @nodoc
mixin _$TvShowModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  ImageSourceModel get imageSource => throw _privateConstructorUsedError;
  ScheduleModel? get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'airstamp')
  DateTime? get airs => throw _privateConstructorUsedError;
  @JsonKey(name: 'premiered')
  DateTime? get premiered => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended')
  DateTime? get ended => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this TvShowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowModelCopyWith<TvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowModelCopyWith<$Res> {
  factory $TvShowModelCopyWith(
          TvShowModel value, $Res Function(TvShowModel) then) =
      _$TvShowModelCopyWithImpl<$Res, TvShowModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image') ImageSourceModel imageSource,
      ScheduleModel? schedule,
      @JsonKey(name: 'airstamp') DateTime? airs,
      @JsonKey(name: 'premiered') DateTime? premiered,
      @JsonKey(name: 'ended') DateTime? ended,
      List<String> genres,
      String summary});

  $ImageSourceModelCopyWith<$Res> get imageSource;
  $ScheduleModelCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$TvShowModelCopyWithImpl<$Res, $Val extends TvShowModel>
    implements $TvShowModelCopyWith<$Res> {
  _$TvShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageSource = null,
    Object? schedule = freezed,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
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
              as ImageSourceModel,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleModel?,
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
    ) as $Val);
  }

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageSourceModelCopyWith<$Res> get imageSource {
    return $ImageSourceModelCopyWith<$Res>(_value.imageSource, (value) {
      return _then(_value.copyWith(imageSource: value) as $Val);
    });
  }

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleModelCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleModelCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TvShowModelImplCopyWith<$Res>
    implements $TvShowModelCopyWith<$Res> {
  factory _$$TvShowModelImplCopyWith(
          _$TvShowModelImpl value, $Res Function(_$TvShowModelImpl) then) =
      __$$TvShowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image') ImageSourceModel imageSource,
      ScheduleModel? schedule,
      @JsonKey(name: 'airstamp') DateTime? airs,
      @JsonKey(name: 'premiered') DateTime? premiered,
      @JsonKey(name: 'ended') DateTime? ended,
      List<String> genres,
      String summary});

  @override
  $ImageSourceModelCopyWith<$Res> get imageSource;
  @override
  $ScheduleModelCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$$TvShowModelImplCopyWithImpl<$Res>
    extends _$TvShowModelCopyWithImpl<$Res, _$TvShowModelImpl>
    implements _$$TvShowModelImplCopyWith<$Res> {
  __$$TvShowModelImplCopyWithImpl(
      _$TvShowModelImpl _value, $Res Function(_$TvShowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageSource = null,
    Object? schedule = freezed,
    Object? airs = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? genres = null,
    Object? summary = null,
  }) {
    return _then(_$TvShowModelImpl(
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
              as ImageSourceModel,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleModel?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowModelImpl extends _TvShowModel {
  const _$TvShowModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image') this.imageSource = const ImageSourceModel(),
      this.schedule,
      @JsonKey(name: 'airstamp') this.airs,
      @JsonKey(name: 'premiered') this.premiered,
      @JsonKey(name: 'ended') this.ended,
      final List<String> genres = const [],
      required this.summary})
      : _genres = genres,
        super._();

  factory _$TvShowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image')
  final ImageSourceModel imageSource;
  @override
  final ScheduleModel? schedule;
  @override
  @JsonKey(name: 'airstamp')
  final DateTime? airs;
  @override
  @JsonKey(name: 'premiered')
  final DateTime? premiered;
  @override
  @JsonKey(name: 'ended')
  final DateTime? ended;
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
    return 'TvShowModel(id: $id, name: $name, imageSource: $imageSource, schedule: $schedule, airs: $airs, premiered: $premiered, ended: $ended, genres: $genres, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageSource, imageSource) ||
                other.imageSource == imageSource) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.airs, airs) || other.airs == airs) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageSource,
      schedule,
      airs,
      premiered,
      ended,
      const DeepCollectionEquality().hash(_genres),
      summary);

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowModelImplCopyWith<_$TvShowModelImpl> get copyWith =>
      __$$TvShowModelImplCopyWithImpl<_$TvShowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowModelImplToJson(
      this,
    );
  }
}

abstract class _TvShowModel extends TvShowModel {
  const factory _TvShowModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'image') final ImageSourceModel imageSource,
      final ScheduleModel? schedule,
      @JsonKey(name: 'airstamp') final DateTime? airs,
      @JsonKey(name: 'premiered') final DateTime? premiered,
      @JsonKey(name: 'ended') final DateTime? ended,
      final List<String> genres,
      required final String summary}) = _$TvShowModelImpl;
  const _TvShowModel._() : super._();

  factory _TvShowModel.fromJson(Map<String, dynamic> json) =
      _$TvShowModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image')
  ImageSourceModel get imageSource;
  @override
  ScheduleModel? get schedule;
  @override
  @JsonKey(name: 'airstamp')
  DateTime? get airs;
  @override
  @JsonKey(name: 'premiered')
  DateTime? get premiered;
  @override
  @JsonKey(name: 'ended')
  DateTime? get ended;
  @override
  List<String> get genres;
  @override
  String get summary;

  /// Create a copy of TvShowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowModelImplCopyWith<_$TvShowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
