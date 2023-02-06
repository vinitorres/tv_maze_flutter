import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tv_shows_app/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesLocalDataSource localDataSource;

  FavoritesCubit(this.localDataSource)
      : super(FavoritesState(status: FavoritesStatus.initial));

  loadFavorites() async {
    emit(state.copyWith(status: FavoritesStatus.loading));

    state.favoritesList?.clear();

    List<TvShow> favorites = [];

    favorites = await localDataSource.getFavorites();

    favorites.sort((a, b) => a.name.compareTo(b.name));

    if (favorites.isEmpty) {
      emit(state.copyWith(status: FavoritesStatus.empty));
    } else {
      emit(state.copyWith(
          status: FavoritesStatus.loaded, favoritesList: favorites));
    }
  }

  searchFavorites(String query) async {
    state.filtredList?.clear();

    state.filtredList?.addAll(state.favoritesList!
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList());

    if (state.filtredList!.isEmpty) {
      emit(state.copyWith(status: FavoritesStatus.empty));
    } else {
      emit(state.copyWith(
          status: FavoritesStatus.loaded, filtredList: state.filtredList));
    }
  }
}
