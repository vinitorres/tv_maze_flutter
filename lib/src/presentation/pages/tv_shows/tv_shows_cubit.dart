import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/src/domain/domain.dart';

part 'tv_shows_state.dart';

class TvShowsCubit extends Cubit<TvShowsState> {
  TvShowsCubit(
    this._getTvShowsUsecase,
    this._searchTvShowUsecase,
  ) : super(TvShowsState(status: TvShowsStatus.initial));

  final IGetTvShowsUsecase _getTvShowsUsecase;
  final ISearchTvShowUsecase _searchTvShowUsecase;

  List<TvShow> tvShowList = [];

  loadTvShows(int page) async {
    if (page == 0) {
      tvShowList.clear();
      emit(state.copyWith(status: TvShowsStatus.loading));
    } else {
      emit(state.copyWith(status: TvShowsStatus.loadingMore));
    }

    var response = await _getTvShowsUsecase.call();

    emit(
      response.fold((l) {
        return state.copyWith(status: TvShowsStatus.error);
      }, (r) {
        if (r.isEmpty) return state.copyWith(status: TvShowsStatus.empty);

        tvShowList.addAll(r);

        return state.copyWith(
            status: TvShowsStatus.loaded, tvShowList: tvShowList);
      }),
    );
  }

  searchTvShows(String query, int page) async {
    if (page == 0) {
      tvShowList.clear();
      emit(state.copyWith(status: TvShowsStatus.loading));
    } else {
      emit(state.copyWith(status: TvShowsStatus.loadingMore));
    }

    final response = await _searchTvShowUsecase.call(query, page);

    emit(
      response.fold((l) {
        return state.copyWith(status: TvShowsStatus.error);
      }, (r) {
        if (r.isEmpty) return state.copyWith(status: TvShowsStatus.empty);

        tvShowList.addAll(r);

        return state.copyWith(
            status: TvShowsStatus.loaded, tvShowList: tvShowList);
      }),
    );
  }
}
