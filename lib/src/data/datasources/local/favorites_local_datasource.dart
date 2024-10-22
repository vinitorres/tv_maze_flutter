import 'package:shared_preferences/shared_preferences.dart';
import 'package:tv_shows_app/src/domain/entities/entities.dart';

abstract class IFavoritesLocalDataSource {
  Future<List<TvShow>> getFavorites();
  void toggleFavorite(TvShow tvShow);
  Future<bool> isFavorite(TvShow tvShow);
}

class FavoritesLocalDataSource implements IFavoritesLocalDataSource {
  Future<SharedPreferences> _getInstance() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance;
  }

  @override
  Future<List<TvShow>> getFavorites() async {
    final prefs = await _getInstance();
    final favoritesJson = prefs.getString('favorites') ?? '';
    if (favoritesJson.isEmpty) {
      return [];
    }
    return TvShow.decode(favoritesJson);
  }

  @override
  toggleFavorite(TvShow tvShow) async {
    final prefs = await _getInstance();
    List<TvShow> favorites = await getFavorites();
    bool isFavorite = await this.isFavorite(tvShow);

    if (isFavorite) {
      favorites.removeWhere((element) => element.id == tvShow.id);
    } else {
      favorites.add(tvShow);
    }

    // prefs.setString('favorites', TvShow.encode(favorites));
    print('favorites size: ${favorites.length}');
  }

  @override
  Future<bool> isFavorite(TvShow tvShow) async {
    final favorites = await getFavorites();
    bool isfavorite = false;

    for (var favorite in favorites) {
      if (favorite.id == tvShow.id) {
        isfavorite = true;
        break;
      }
    }
    return isfavorite;
  }
}
