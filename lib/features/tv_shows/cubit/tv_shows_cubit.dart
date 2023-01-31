import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/data/data_sources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'tv_shows_state.dart';

class TvShowsCubit extends Cubit<TvShowsState> {
  TvShowsCubit(this.remoteDataSource) : super(TvShowsInitial());

  final TvShowsRemoteDataSource remoteDataSource;

  loadTvShows(int page) async {
    emit(TvShowsLoading());
    var response = await remoteDataSource.getTvShows(page);

    if (response.isEmpty) {
      emit(TvShowsEmpty());
    } else {
      emit(TvShowsLoaded(tvShowList: response));
    }
  }

  searchTvShows(String query, int page) async {
    emit(TvShowsLoading());
    var response =
        await remoteDataSource.searchTvShows(name: query, page: page);

    if (response.isEmpty) {
      emit(TvShowsEmpty());
    } else {
      emit(TvShowsLoaded(tvShowList: response));
    }
  }
}
