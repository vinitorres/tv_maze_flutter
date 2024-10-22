import 'package:bloc/bloc.dart';
import 'package:tv_shows_app/src/domain/domain.dart';

part 'tv_show_details_state.dart';

class TvShowDetailsCubit extends Cubit<TvShowDetailsState> {
  TvShowDetailsCubit(
    this._getEpisodesUsecase,
    this._getCastUsecase,
    this._toggleFavoriteUsecase,
    this._isFavoriteUsecase,
  ) : super(TvShowDetailsState(status: TvShowDetailsStatus.initial));

  var favoritesHasChange = false;

  final IGetEpisodesUsecase _getEpisodesUsecase;
  final IGetCastUsecase _getCastUsecase;
  final IToggleFavoriteUsecase _toggleFavoriteUsecase;
  final IIsFavoriteUsecase _isFavoriteUsecase;

  loadTvShowDetails(TvShow tvShow) async {
    await _loadCast(tvShow);
    await _loadEpisodes(tvShow);
  }

  _loadCast(TvShow tvShow) async {
    emit(state.copyWith(status: TvShowDetailsStatus.loadingCast));

    var response = await _getCastUsecase.call(tvShow.id);

    emit(response.fold((error) {
      return state.copyWith(status: TvShowDetailsStatus.errorCast);
    }, (success) {
      return state.copyWith(
          status: TvShowDetailsStatus.loadedCast, cast: success);
    }));
  }

  _loadEpisodes(TvShow tvShow) async {
    emit(state.copyWith(status: TvShowDetailsStatus.loadingEpisodes));

    var response = await _getEpisodesUsecase.call(tvShow.id);

    emit(
      response.fold(
        (l) {
          return state.copyWith(status: TvShowDetailsStatus.errorEpisodes);
        },
        (r) {
          if (r.isEmpty)
            return state.copyWith(status: TvShowDetailsStatus.errorEpisodes);

          return state.copyWith(
              status: TvShowDetailsStatus.loadedEpisodes, episodes: r);
        },
      ),
    );
  }

  Future<bool> isFavorite(TvShow tvShow) async {
    return await _isFavoriteUsecase.call(tvShow);
  }

  addOrRemoveFromFavorites(TvShow tvShow) {
    _toggleFavoriteUsecase.call(tvShow);
    favoritesHasChange = true;
  }
}
