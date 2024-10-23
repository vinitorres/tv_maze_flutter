import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor.freezed.dart';

/// Actor entity - Actor from TV show
@freezed
class Actor with _$Actor {
  const Actor._();

  /// Constructor [Actor]
  const factory Actor({
    required int id,
    required String name,
    required String country,
    String? thumb,
    String? poster,
    DateTime? birthday,
  }) = _Actor;
}
