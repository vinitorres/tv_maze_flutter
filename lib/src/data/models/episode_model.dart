import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/episode.dart';
import 'image_source_model.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

/// Episode model
@freezed
class EpisodeModel with _$EpisodeModel {
  const EpisodeModel._();

  /// Constructor [EpisodeModel]
  const factory EpisodeModel({
    required int id,
    required String name,
    required int number,
    required int season,
    @JsonKey(name: 'image')
    @Default(ImageSourceModel())
    ImageSourceModel imageSource,
    @JsonKey(name: 'airstamp') DateTime? airs,
    required String summary,
  }) = _EpisodeModel;

  /// Create [EpisodeModel] from json
  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  /// Convert [EpisodeModel] to [Episode]
  Episode toEntity() => Episode(
        id: id,
        name: name,
        number: number,
        season: season,
        imageSource: imageSource.toEntity(),
        airs: airs,
        summary: summary,
      );
}
