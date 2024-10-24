// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSourceModel _$ImageSourceModelFromJson(Map<String, dynamic> json) {
  return _ImageSourceModel.fromJson(json);
}

/// @nodoc
mixin _$ImageSourceModel {
  String get original => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;

  /// Serializes this ImageSourceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSourceModelCopyWith<ImageSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSourceModelCopyWith<$Res> {
  factory $ImageSourceModelCopyWith(
          ImageSourceModel value, $Res Function(ImageSourceModel) then) =
      _$ImageSourceModelCopyWithImpl<$Res, ImageSourceModel>;
  @useResult
  $Res call({String original, String medium});
}

/// @nodoc
class _$ImageSourceModelCopyWithImpl<$Res, $Val extends ImageSourceModel>
    implements $ImageSourceModelCopyWith<$Res> {
  _$ImageSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? medium = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSourceModelImplCopyWith<$Res>
    implements $ImageSourceModelCopyWith<$Res> {
  factory _$$ImageSourceModelImplCopyWith(_$ImageSourceModelImpl value,
          $Res Function(_$ImageSourceModelImpl) then) =
      __$$ImageSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String original, String medium});
}

/// @nodoc
class __$$ImageSourceModelImplCopyWithImpl<$Res>
    extends _$ImageSourceModelCopyWithImpl<$Res, _$ImageSourceModelImpl>
    implements _$$ImageSourceModelImplCopyWith<$Res> {
  __$$ImageSourceModelImplCopyWithImpl(_$ImageSourceModelImpl _value,
      $Res Function(_$ImageSourceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? medium = null,
  }) {
    return _then(_$ImageSourceModelImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSourceModelImpl extends _ImageSourceModel {
  const _$ImageSourceModelImpl({this.original = '', this.medium = ''})
      : super._();

  factory _$ImageSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSourceModelImplFromJson(json);

  @override
  @JsonKey()
  final String original;
  @override
  @JsonKey()
  final String medium;

  @override
  String toString() {
    return 'ImageSourceModel(original: $original, medium: $medium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSourceModelImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, medium);

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSourceModelImplCopyWith<_$ImageSourceModelImpl> get copyWith =>
      __$$ImageSourceModelImplCopyWithImpl<_$ImageSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSourceModelImplToJson(
      this,
    );
  }
}

abstract class _ImageSourceModel extends ImageSourceModel {
  const factory _ImageSourceModel(
      {final String original, final String medium}) = _$ImageSourceModelImpl;
  const _ImageSourceModel._() : super._();

  factory _ImageSourceModel.fromJson(Map<String, dynamic> json) =
      _$ImageSourceModelImpl.fromJson;

  @override
  String get original;
  @override
  String get medium;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSourceModelImplCopyWith<_$ImageSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
