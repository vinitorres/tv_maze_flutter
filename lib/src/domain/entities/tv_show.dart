import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';
import 'schedule.dart';

part 'tv_show.freezed.dart';

/// TV show entity
@freezed
class TvShow with _$TvShow {
  const TvShow._();

  /// Constructor [TvShow]
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
}
