import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'tv_shows_state.freezed.dart';

/// State for TvShowsPage
@freezed
sealed class TvShowsState with _$TvShowsState {
  const factory TvShowsState.loading() = TvShowsStateLoading;

  const factory TvShowsState.loadingMore({
    required List<TvShow> tvShowList,
  }) = TvShowsStateLoadingMore;

  const factory TvShowsState.loaded({
    required List<TvShow> tvShowList,
  }) = TvShowsStateLoaded;

  const factory TvShowsState.empty() = TvShowsStateEmpty;

  const factory TvShowsState.error({
    required String message,
  }) = TvShowsStateError;
}
