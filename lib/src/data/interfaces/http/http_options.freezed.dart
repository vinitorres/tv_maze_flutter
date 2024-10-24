// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpOptions {
  String get path => throw _privateConstructorUsedError;
  HttpMethod get method => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get query => throw _privateConstructorUsedError;
  Duration get timeout => throw _privateConstructorUsedError;

  /// Create a copy of HttpOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpOptionsCopyWith<HttpOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpOptionsCopyWith<$Res> {
  factory $HttpOptionsCopyWith(
          HttpOptions value, $Res Function(HttpOptions) then) =
      _$HttpOptionsCopyWithImpl<$Res, HttpOptions>;
  @useResult
  $Res call(
      {String path,
      HttpMethod method,
      String? url,
      Map<String, dynamic>? data,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Duration timeout});
}

/// @nodoc
class _$HttpOptionsCopyWithImpl<$Res, $Val extends HttpOptions>
    implements $HttpOptionsCopyWith<$Res> {
  _$HttpOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? method = null,
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
    Object? query = freezed,
    Object? timeout = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpOptionsImplCopyWith<$Res>
    implements $HttpOptionsCopyWith<$Res> {
  factory _$$HttpOptionsImplCopyWith(
          _$HttpOptionsImpl value, $Res Function(_$HttpOptionsImpl) then) =
      __$$HttpOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      HttpMethod method,
      String? url,
      Map<String, dynamic>? data,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Duration timeout});
}

/// @nodoc
class __$$HttpOptionsImplCopyWithImpl<$Res>
    extends _$HttpOptionsCopyWithImpl<$Res, _$HttpOptionsImpl>
    implements _$$HttpOptionsImplCopyWith<$Res> {
  __$$HttpOptionsImplCopyWithImpl(
      _$HttpOptionsImpl _value, $Res Function(_$HttpOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? method = null,
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
    Object? query = freezed,
    Object? timeout = null,
  }) {
    return _then(_$HttpOptionsImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$HttpOptionsImpl implements _HttpOptions {
  const _$HttpOptionsImpl(
      {required this.path,
      required this.method,
      this.url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers,
      final Map<String, dynamic>? query,
      this.timeout = const Duration(seconds: 10)})
      : _data = data,
        _headers = headers,
        _query = query;

  @override
  final String path;
  @override
  final HttpMethod method;
  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final Duration timeout;

  @override
  String toString() {
    return 'HttpOptions(path: $path, method: $method, url: $url, data: $data, headers: $headers, query: $query, timeout: $timeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpOptionsImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._query, _query) &&
            (identical(other.timeout, timeout) || other.timeout == timeout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      method,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_query),
      timeout);

  /// Create a copy of HttpOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpOptionsImplCopyWith<_$HttpOptionsImpl> get copyWith =>
      __$$HttpOptionsImplCopyWithImpl<_$HttpOptionsImpl>(this, _$identity);
}

abstract class _HttpOptions implements HttpOptions {
  const factory _HttpOptions(
      {required final String path,
      required final HttpMethod method,
      final String? url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers,
      final Map<String, dynamic>? query,
      final Duration timeout}) = _$HttpOptionsImpl;

  @override
  String get path;
  @override
  HttpMethod get method;
  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  @override
  Map<String, String>? get headers;
  @override
  Map<String, dynamic>? get query;
  @override
  Duration get timeout;

  /// Create a copy of HttpOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpOptionsImplCopyWith<_$HttpOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
