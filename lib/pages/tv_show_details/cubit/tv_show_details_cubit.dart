import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tv_shows_app/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/entities/episode.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'tv_show_details_state.dart';

class TvShowDetailsCubit extends Cubit<TvShowDetailsState> {
  TvShowDetailsCubit(this.remoteDataSource, this.favoritesLocalDataSource)
      : super(TvShowDetailsState(status: TvShowDetailsStatus.initial));

  var favoritesHasChange = false;

  final TvShowsRemoteDataSource remoteDataSource;
  final FavoritesLocalDataSource favoritesLocalDataSource;

  late TvShow tvShow;

  setTvShow(TvShow tvShow) {
    this.tvShow = tvShow;
    _loadTvShowDetails();
  }

  _loadTvShowDetails() async {
    await _loadCast();
    await _loadEpisodes();
  }

  _loadCast() async {
    emit(state.copyWith(status: TvShowDetailsStatus.loadingCast));

    var response = await remoteDataSource.getActors(tvShow.id);

    if (response.isEmpty) {
      emit(state.copyWith(
        status: TvShowDetailsStatus.loadingCast,
      ));
    } else {
      emit(state.copyWith(
          status: TvShowDetailsStatus.loadedCast, cast: response));
    }
  }

  _loadEpisodes() async {
    emit(state.copyWith(status: TvShowDetailsStatus.loadingEpisodes));

    var response = await remoteDataSource.getEpisodes(tvShow.id);

    if (response.isEmpty) {
      emit(state.copyWith(status: TvShowDetailsStatus.errorEpisodes));
    } else {
      emit(state.copyWith(
          status: TvShowDetailsStatus.loadedEpisodes, episodes: response));
    }
  }

  Future<bool> isFavorite() async {
    return await favoritesLocalDataSource.isFavorite(tvShow);
  }

  addOrRemoveFromFavorites() {
    favoritesLocalDataSource.setFavorite(tvShow);
    favoritesHasChange = true;
  }
}
