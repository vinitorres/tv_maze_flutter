import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/domain.dart';
import 'tv_show_details_state.dart';

class TvShowDetailsViewModel extends Cubit<TvShowDetailsState> {
  TvShowDetailsViewModel(
    this._toggleFavoriteUsecase,
    this._isFavoriteUsecase,
  ) : super(TvShowDetailsState(isFavorite: false));

  final IToggleFavoriteUsecase _toggleFavoriteUsecase;
  final IIsFavoriteUsecase _isFavoriteUsecase;

  verifyFavorite(TvShow tvShow) async {
    final favorite = await _isFavoriteUsecase.call(tvShow);
    emit(TvShowDetailsState(isFavorite: favorite));
  }

  Future<bool> isFavorite(TvShow tvShow) async {
    return await _isFavoriteUsecase.call(tvShow);
  }

  addOrRemoveFromFavorites(TvShow tvShow) {
    _toggleFavoriteUsecase.call(tvShow);
    emit(TvShowDetailsState(isFavorite: !state.isFavorite));
  }
}
