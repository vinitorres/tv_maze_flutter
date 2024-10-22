// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _Actor.fromJson(json);
}

/// @nodoc
mixin _$ActorModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image.medium', defaultValue: '')
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'image.original', defaultValue: '')
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'country.name', defaultValue: '')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  DateTime? get birthday => throw _privateConstructorUsedError;

  /// Serializes this ActorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
          ActorModel value, $Res Function(ActorModel) then) =
      _$ActorModelCopyWithImpl<$Res, ActorModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image.medium', defaultValue: '') String thumb,
      @JsonKey(name: 'image.original', defaultValue: '') String poster,
      @JsonKey(name: 'country.name', defaultValue: '') String country,
      @JsonKey(name: 'birthday') DateTime? birthday});
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res, $Val extends ActorModel>
    implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumb = null,
    Object? poster = null,
    Object? country = null,
    Object? birthday = freezed,
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
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorImplCopyWith<$Res> implements $ActorModelCopyWith<$Res> {
  factory _$$ActorImplCopyWith(
          _$ActorImpl value, $Res Function(_$ActorImpl) then) =
      __$$ActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image.medium', defaultValue: '') String thumb,
      @JsonKey(name: 'image.original', defaultValue: '') String poster,
      @JsonKey(name: 'country.name', defaultValue: '') String country,
      @JsonKey(name: 'birthday') DateTime? birthday});
}

/// @nodoc
class __$$ActorImplCopyWithImpl<$Res>
    extends _$ActorModelCopyWithImpl<$Res, _$ActorImpl>
    implements _$$ActorImplCopyWith<$Res> {
  __$$ActorImplCopyWithImpl(
      _$ActorImpl _value, $Res Function(_$ActorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumb = null,
    Object? poster = null,
    Object? country = null,
    Object? birthday = freezed,
  }) {
    return _then(_$ActorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorImpl extends _Actor {
  _$ActorImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image.medium', defaultValue: '') required this.thumb,
      @JsonKey(name: 'image.original', defaultValue: '') required this.poster,
      @JsonKey(name: 'country.name', defaultValue: '') required this.country,
      @JsonKey(name: 'birthday') this.birthday})
      : super._();

  factory _$ActorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image.medium', defaultValue: '')
  final String thumb;
  @override
  @JsonKey(name: 'image.original', defaultValue: '')
  final String poster;
  @override
  @JsonKey(name: 'country.name', defaultValue: '')
  final String country;
  @override
  @JsonKey(name: 'birthday')
  final DateTime? birthday;

  @override
  String toString() {
    return 'ActorModel(id: $id, name: $name, thumb: $thumb, poster: $poster, country: $country, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, thumb, poster, country, birthday);

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      __$$ActorImplCopyWithImpl<_$ActorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorImplToJson(
      this,
    );
  }
}

abstract class _Actor extends ActorModel {
  factory _Actor(
      {required final int id,
      required final String name,
      @JsonKey(name: 'image.medium', defaultValue: '')
      required final String thumb,
      @JsonKey(name: 'image.original', defaultValue: '')
      required final String poster,
      @JsonKey(name: 'country.name', defaultValue: '')
      required final String country,
      @JsonKey(name: 'birthday') final DateTime? birthday}) = _$ActorImpl;
  _Actor._() : super._();

  factory _Actor.fromJson(Map<String, dynamic> json) = _$ActorImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image.medium', defaultValue: '')
  String get thumb;
  @override
  @JsonKey(name: 'image.original', defaultValue: '')
  String get poster;
  @override
  @JsonKey(name: 'country.name', defaultValue: '')
  String get country;
  @override
  @JsonKey(name: 'birthday')
  DateTime? get birthday;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
