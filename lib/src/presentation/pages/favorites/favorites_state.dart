import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'favorites_state.freezed.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  factory FavoritesState.loading() = FavoritesStateLoading;

  factory FavoritesState.loaded({
    required List<TvShow> favoritesList,
    required List<TvShow> filtredList,
  }) = FavoritesStateLoaded;

  factory FavoritesState.empty() = FavoritesStateEmpty;

  factory FavoritesState.error({
    required String message,
  }) = FavoritesStateError;
}
