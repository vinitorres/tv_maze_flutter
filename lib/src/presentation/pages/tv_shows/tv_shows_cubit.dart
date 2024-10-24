import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/domain.dart';
import 'tv_shows_state.dart';

/// Cubit for TvShowsPage
class TvShowsCubit extends Cubit<TvShowsState> {
  /// Constructor [TvShowsCubit]
  TvShowsCubit(
    this._getTvShowsUsecase,
    this._searchTvShowUsecase,
  ) : super(TvShowsState.loading());

  final IGetTvShowsUsecase _getTvShowsUsecase;
  final ISearchTvShowUsecase _searchTvShowUsecase;

  /// Load TV shows from the API
  loadTvShows(int page) async {
    if (page == 0) {
      emit(TvShowsState.loading());
    } else {
      final tvShowList = (state as TvShowsStateLoaded).tvShowList;
      emit(TvShowsState.loadingMore(tvShowList: tvShowList));
    }

    final response = await _getTvShowsUsecase.call();

    emit(
      response.fold((l) {
        return TvShowsState.error(message: l.toString());
      }, (r) {
        if (r.isEmpty) return TvShowsState.empty();

        return TvShowsState.loaded(tvShowList: r);
      }),
    );
  }

  /// Search TV shows from the API
  searchTvShows(String query, int page) async {
    if (page == 0) {
      emit(TvShowsState.loading());
    } else {
      final tvShowList = (state as TvShowsStateLoaded).tvShowList;
      emit(TvShowsState.loadingMore(tvShowList: tvShowList));
    }

    final response = await _searchTvShowUsecase.call(query, page);

    emit(
      response.fold((l) {
        return TvShowsState.error(message: l.toString());
      }, (r) {
        if (r.isEmpty) TvShowsState.empty();

        final tvShowList = (state as TvShowsStateLoaded).tvShowList;
        tvShowList.addAll(r);

        return TvShowsState.loaded(tvShowList: tvShowList);
      }),
    );
  }
}
