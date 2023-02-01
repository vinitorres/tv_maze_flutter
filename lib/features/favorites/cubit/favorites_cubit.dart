import 'package:bloc/bloc.dart';
import 'package:tv_shows_app/core/data/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/core/data/domain/entities/tv_show.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.localDataSource) : super(FavoritesInitial());

  final FavoritesLocalDataSource localDataSource;

  List<TvShow> favoritesList = [];

  loadFavorites() async {
    emit(FavoritesLoading());
    List<TvShow> favorites = [];

    favorites = await localDataSource.getFavorites();

    favorites.sort((a, b) => a.name.compareTo(b.name));

    if (favorites.isEmpty) {
      emit(FavoritesEmpty());
    } else {
      favoritesList.addAll(favorites);
      emit(FavoritesLoaded());
    }
  }

  searchFavorites(String query) async {
    emit(FavoritesLoading());

    favoritesList.clear();

    var favorites = await loadFavorites();

    favorites =
        favorites.where((element) => element.name.contains(query)).toList();

    if (favorites.isEmpty) {
      emit(FavoritesEmpty());
    } else {
      favoritesList.addAll(favorites);
      emit(FavoritesLoaded());
    }
  }
}
