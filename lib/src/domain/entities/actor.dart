import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor.freezed.dart';

@freezed
class Actor with _$Actor {
  const Actor._();

  const factory Actor({
    required int id,
    required String name,
    required String country,
    String? thumb,
    String? poster,
    DateTime? birthday,
  }) = _Actor;
}
