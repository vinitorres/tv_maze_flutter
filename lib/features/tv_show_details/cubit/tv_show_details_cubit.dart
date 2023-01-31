import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/data/data_sources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/entities/episode.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'tv_show_details_state.dart';

class TvShowDetailsCubit extends Cubit<TvShowDetailsState> {
  TvShowDetailsCubit(this.remoteDataSource) : super(TvShowDetailsInitial());

  final TvShowsRemoteDataSource remoteDataSource;
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
}
