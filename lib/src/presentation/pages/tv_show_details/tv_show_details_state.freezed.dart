// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TvShowDetailsState {
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Create a copy of TvShowDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowDetailsStateCopyWith<TvShowDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowDetailsStateCopyWith<$Res> {
  factory $TvShowDetailsStateCopyWith(
          TvShowDetailsState value, $Res Function(TvShowDetailsState) then) =
      _$TvShowDetailsStateCopyWithImpl<$Res, TvShowDetailsState>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class _$TvShowDetailsStateCopyWithImpl<$Res, $Val extends TvShowDetailsState>
    implements $TvShowDetailsStateCopyWith<$Res> {
  _$TvShowDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShowDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowDetailsStateImplCopyWith<$Res>
    implements $TvShowDetailsStateCopyWith<$Res> {
  factory _$$TvShowDetailsStateImplCopyWith(_$TvShowDetailsStateImpl value,
          $Res Function(_$TvShowDetailsStateImpl) then) =
      __$$TvShowDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$TvShowDetailsStateImplCopyWithImpl<$Res>
    extends _$TvShowDetailsStateCopyWithImpl<$Res, _$TvShowDetailsStateImpl>
    implements _$$TvShowDetailsStateImplCopyWith<$Res> {
  __$$TvShowDetailsStateImplCopyWithImpl(_$TvShowDetailsStateImpl _value,
      $Res Function(_$TvShowDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShowDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$TvShowDetailsStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TvShowDetailsStateImpl implements _TvShowDetailsState {
  const _$TvShowDetailsStateImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'TvShowDetailsState(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowDetailsStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  /// Create a copy of TvShowDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowDetailsStateImplCopyWith<_$TvShowDetailsStateImpl> get copyWith =>
      __$$TvShowDetailsStateImplCopyWithImpl<_$TvShowDetailsStateImpl>(
          this, _$identity);
}

abstract class _TvShowDetailsState implements TvShowDetailsState {
  const factory _TvShowDetailsState({required final bool isFavorite}) =
      _$TvShowDetailsStateImpl;

  @override
  bool get isFavorite;

  /// Create a copy of TvShowDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowDetailsStateImplCopyWith<_$TvShowDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
