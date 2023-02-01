import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/core/data/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/core/data/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/core/domain/entities/actor.dart';
import 'package:tv_shows_app/core/domain/entities/episode.dart';
import 'package:tv_shows_app/core/domain/entities/tv_show.dart';
import 'package:tv_shows_app/features/favorites/cubit/favorites_cubit.dart';

part 'tv_show_details_state.dart';

class TvShowDetailsCubit extends Cubit<TvShowDetailsState> {
  TvShowDetailsCubit(
      this.remoteDataSource, this.favoritesLocalDataSource, this.favoritesCubit)
      : super(TvShowDetailsInitial());

  final FavoritesCubit favoritesCubit;

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
    emit(TvShowDetailsLoadingCast());

    var response = await remoteDataSource.getActors(tvShow.id);

    if (response.isEmpty) {
      emit(TvShowDetailsErrorCast());
    } else {
      emit(TvShowDetailsLoadedCast(cast: response));
    }
  }

  _loadEpisodes() async {
    emit(TvShowDetailsLoadingEpisodes());

    var response = await remoteDataSource.getEpisodes(tvShow.id);

    if (response.isEmpty) {
      emit(TvShowDetailsErrorEpisodes());
    } else {
      emit(TvShowDetailsLoadedEpisodes(episodes: response));
    }
  }

  Future<bool> isFavorite() async {
    return await favoritesLocalDataSource.isFavorite(tvShow);
  }

  addOrRemoveFromFavorites() {
    favoritesLocalDataSource.favorite(tvShow);
    favoritesCubit.loadFavorites();
  }
}
