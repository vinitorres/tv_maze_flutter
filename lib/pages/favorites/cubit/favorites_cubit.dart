import 'package:bloc/bloc.dart';
import 'package:tv_shows_app/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.localDataSource) : super(FavoritesInitial());

  final FavoritesLocalDataSource localDataSource;

  List<TvShow> favoritesList = [];
  List<TvShow> filtredList = [];

  loadFavorites() async {
    emit(FavoritesLoading());

    favoritesList.clear();

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
    filtredList.clear();

    filtredList.addAll(favoritesList
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList());

    if (filtredList.isEmpty) {
      emit(FavoritesEmpty());
    } else {
      emit(FavoritesLoaded());
    }
  }
}
