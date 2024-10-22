import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  const Episode._();

  const factory Episode(
      {required int id,
      required String name,
      required int number,
      required int season,
      String? thumb,
      String? poster,
      DateTime? airs,
      required String summary}) = _Episode;
}
