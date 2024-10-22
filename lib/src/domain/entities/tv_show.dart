import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/src/data/models/tv_show_model.dart';

import 'episode.dart';
import 'schedule.dart';

part 'tv_show.freezed.dart';

@freezed
class TvShow with _$TvShow {
  const TvShow._();

  const factory TvShow({
    required int id,
    required String name,
    required String posterUrl,
    DateTime? airs,
    DateTime? premiered,
    DateTime? ended,
    required List<String> genres,
    required String summary,
    required List<Episode> episodes,
    required Schedule schedule,
  }) = _TvShow;

  //create enconde and decode for list of tv shows

  static List<TvShow> decode(String tvShowsJson) {
    final tvShows = <TvShow>[];
    final tvShowsMap = jsonDecode(tvShowsJson) as List<dynamic>;
    for (final tvShowMap in tvShowsMap) {
      tvShows.add(TvShowModel.fromJson(tvShowMap).toEntity());
    }
    return tvShows;
  }

  static String encode(List<TvShowModel> tvShows) {
    final tvShowsMap = tvShows.map((tvShow) => tvShow.toJson()).toList();
    return jsonEncode(tvShowsMap);
  }
}
