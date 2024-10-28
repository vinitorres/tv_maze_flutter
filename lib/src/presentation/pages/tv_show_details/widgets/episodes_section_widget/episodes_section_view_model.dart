import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/domain.dart';
import 'episodes_section_state.dart';

class EpisodesSectionViewModel extends Cubit<EpisodesSectionState> {
  EpisodesSectionViewModel(this._getEpisodesUsecase)
      : super(EpisodesSectionState.initial());

  final IGetEpisodesUsecase _getEpisodesUsecase;

  loadEpisodes(int tvShowId) async {
    emit(EpisodesSectionState.loading());

    final response = await _getEpisodesUsecase.call(tvShowId);

    emit(
      response.fold((error) {
        return EpisodesSectionState.error(
          message: error.message,
        );
      }, (success) {
        return EpisodesSectionState.loaded(
          seasons: filterSeasons(success),
        );
      }),
    );
  }

  filterSeasons(List<Episode> episodes) {
    //Filter episodes by season
    final List<List<Episode>> seasons =
        episodes.fold<List<List<Episode>>>([], (season, episode) {
      if (season.isEmpty) {
        season.add([episode]);
      } else {
        final lastSeason = season.last;
        if (lastSeason.first.season == episode.season) {
          lastSeason.add(episode);
        } else {
          season.add([episode]);
        }
      }
      return season;
    });

    return seasons;
  }
}
