import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/tv_show.dart';
import '../../../domain/usecases/get_favorities_usecase.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this._getFavoritiesUsecase)
      : super(FavoritesState(status: FavoritesStatus.initial));

  final IGetFavoritiesUsecase _getFavoritiesUsecase;

  loadFavorites() async {
    emit(state.copyWith(status: FavoritesStatus.loading));

    state.favoritesList?.clear();

    final response = await _getFavoritiesUsecase();

    emit(
      response.fold(
        (l) {
          return state.copyWith(status: FavoritesStatus.empty);
        },
        (r) {
          if (r.isNotEmpty) {
            return state.copyWith(status: FavoritesStatus.empty);
          }

          r.sort((a, b) => a.name.compareTo(b.name));

          return state.copyWith(
            status: FavoritesStatus.loaded,
            favoritesList: r,
          );
        },
      ),
    );
  }

  searchFavorites(String query) async {
    state.filtredList?.clear();

    state.filtredList?.addAll(
      state.favoritesList!
          .where(
            (element) =>
                element.name.toLowerCase().contains(query.toLowerCase()),
          )
          .toList(),
    );

    if (state.filtredList!.isEmpty) {
      emit(state.copyWith(status: FavoritesStatus.empty));
    } else {
      emit(
        state.copyWith(
          status: FavoritesStatus.loaded,
          filtredList: state.filtredList,
        ),
      );
    }
  }
}
