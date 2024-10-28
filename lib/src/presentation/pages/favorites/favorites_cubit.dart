import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/domain.dart';
import 'favorites_state.dart';

class FavoritesViewModel extends Cubit<FavoritesState> {
  FavoritesViewModel(this._getFavoritiesUsecase)
      : super(FavoritesStateLoading());

  final IGetFavoritiesUsecase _getFavoritiesUsecase;

  loadFavorites() async {
    emit(FavoritesState.loading());

    final response = await _getFavoritiesUsecase();

    emit(
      response.fold(
        (l) {
          return FavoritesState.error(message: l.message);
        },
        (r) {
          if (r.isNotEmpty) {
            return FavoritesState.empty();
          }

          r.sort((a, b) => a.name.compareTo(b.name));

          return FavoritesState.loaded(
            favoritesList: r,
            filtredList: [],
          );
        },
      ),
    );
  }

  searchFavorites(String query) async {
    if (query.isEmpty) {
      return;
    }

    final state = this.state as FavoritesStateLoaded;

    final filtredList = state.favoritesList
        .where(
          (element) => element.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    emit(
      state.copyWith(
        filtredList: filtredList,
      ),
    );
  }
}
