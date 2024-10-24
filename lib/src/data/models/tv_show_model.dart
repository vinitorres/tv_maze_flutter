import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tv_show.dart';
import 'image_source_model.dart';
import 'schedule_model.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

/// TvShow model
@freezed
class TvShowModel with _$TvShowModel {
  const TvShowModel._();

  /// Constructor [TvShowModel]
  const factory TvShowModel({
    required int id,
    required String name,
    @JsonKey(name: 'image')
    @Default(ImageSourceModel())
    ImageSourceModel imageSource,
    ScheduleModel? schedule,
    @JsonKey(name: 'airstamp') DateTime? airs,
    @JsonKey(name: 'premiered') DateTime? premiered,
    @JsonKey(name: 'ended') DateTime? ended,
    @Default([]) List<String> genres,
    required String summary,
  }) = _TvShowModel;

  /// Create [TvShowModel] from json
  factory TvShowModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowModelFromJson(json);

  /// Convert [TvShowModel] to [TvShow]
  TvShow toEntity() => TvShow(
        id: id,
        name: name,
        imageSource: imageSource.toEntity(),
        schedule: schedule?.toEntity(),
        airs: airs,
        premiered: premiered,
        ended: ended,
        genres: genres,
        summary: summary,
      );

  //create enconde and decode for list of tv shows

  /// Decode [TvShowModel] from json
  List<TvShowModel> decode(String tvShowsJson) {
    final tvShows = <TvShowModel>[];
    final tvShowsMap = jsonDecode(tvShowsJson) as List<dynamic>;
    for (final tvShowMap in tvShowsMap) {
      tvShows.add(TvShowModel.fromJson(tvShowMap));
    }
    return tvShows;
  }

  /// Encode list of [TvShowModel] to json
  String encode(List<TvShowModel> tvShows) {
    final tvShowsMap = tvShows.map((tvShow) => tvShow.toJson()).toList();
    return jsonEncode(tvShowsMap);
  }
}
