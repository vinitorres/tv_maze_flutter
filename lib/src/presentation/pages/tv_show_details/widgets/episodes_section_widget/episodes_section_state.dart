import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/domain.dart';

part 'episodes_section_state.freezed.dart';

@freezed
class EpisodesSectionState with _$EpisodesSectionState {
  const factory EpisodesSectionState.initial() = EpisodesSectionStateInitial;
  const factory EpisodesSectionState.loading() = EpisodesSectionStateLoading;
  const factory EpisodesSectionState.loaded({
    required List<List<Episode>> seasons,
  }) = EpisodesSectionStateLoaded;
  const factory EpisodesSectionState.error({
    required String message,
  }) = EpisodesSectionStateError;
}
