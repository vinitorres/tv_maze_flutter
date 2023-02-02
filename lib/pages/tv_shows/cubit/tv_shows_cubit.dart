import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/entities/tv_show.dart';
import 'package:tv_shows_app/injection/dependency_injection.dart';

part 'tv_shows_state.dart';

class TvShowsCubit extends Cubit<TvShowsState> {
  TvShowsCubit() : super(TvShowsInitial());

  TvShowsRemoteDataSource remoteDataSource = getIt.get<TvShowsRemoteDataSource>();

  List<TvShow> tvShowList = [];

  loadTvShows(int page) async {
    if (page == 0) {
      tvShowList.clear();
      emit(TvShowsLoading());
    } else {
      emit(TvShowsLoadingMore());
    }

    var response = await remoteDataSource.getTvShows(page);

    if (response.isEmpty) {
      emit(TvShowsEmpty());
    } else {
      tvShowList.addAll(response);
      emit(TvShowsLoaded());
    }
  }

  searchTvShows(String query, int page) async {
    if (page == 0) {
      tvShowList.clear();
      emit(TvShowsLoading());
    } else {
      emit(TvShowsLoadingMore());
    }

    var response =
        await remoteDataSource.searchTvShows(name: query, page: page);

    if (response.isEmpty) {
      emit(TvShowsEmpty());
    } else {
      tvShowList.addAll(response);
      emit(TvShowsLoaded());
    }
  }
}
