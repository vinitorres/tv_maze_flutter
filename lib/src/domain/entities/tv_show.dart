import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_source.dart';
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
    required ImageSource imageSource,
    DateTime? airs,
    DateTime? premiered,
    DateTime? ended,
    Schedule? schedule,
    @Default([]) List<String> genres,
    required String summary,
  }) = _TvShow;
}
