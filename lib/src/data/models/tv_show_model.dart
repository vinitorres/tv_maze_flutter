
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tv_show.dart';
import 'episode_model.dart';
import 'schedule_model.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

@freezed
class TvShowModel with _$TvShowModel {
  const TvShowModel._();

  const factory TvShowModel({
    required int id,
    required String name,
    @JsonKey(name: 'image.original', defaultValue: '')
    required String posterUrl,
    @JsonKey(name: 'airstamp') DateTime? airs,
    @JsonKey(name: 'premiered') DateTime? premiered,
    @JsonKey(name: 'ended') DateTime? ended,
    required List<String> genres,
    required String summary,
    required List<EpisodeModel> episodes,
    required ScheduleModel schedule,
  }) = _TvShowModel;

  factory TvShowModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowModelFromJson(json);

  TvShow toEntity() => TvShow(
        id: id,
        name: name,
        posterUrl: posterUrl,
        airs: airs,
        premiered: premiered,
        ended: ended,
        genres: genres,
        summary: summary,
        episodes: episodes.map((e) => e.toEntity()).toList(),
        schedule: schedule.toEntity(),
      );
}
