import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/entities.dart';

/// Data source to manage favorites on local storage
abstract class IFavoritesLocalDataSource {
  /// Get all favorites
  Future<List<TvShow>> getFavorites();

  /// Toggle favorite status
  void toggleFavorite(TvShow tvShow);

  /// Check if a tv show is favorite
  Future<bool> isFavorite(TvShow tvShow);
}

/// Implementation of [IFavoritesLocalDataSource]
class FavoritesLocalDataSource implements IFavoritesLocalDataSource {
  FavoritesLocalDataSource();

  Future<SharedPreferences> _getInstance() async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    return instance;
  }

  @override
  Future<List<TvShow>> getFavorites() async {
    final prefs = await _getInstance();
    final favoritesJson = prefs.getString('favorites') ?? '';
    if (favoritesJson.isEmpty) {
      return [];
    }
    return [];
    // return TvShowModel.decode(favoritesJson);
  }

  @override
  toggleFavorite(TvShow tvShow) async {
    // final prefs = await _getInstance();
    // final List<TvShow> favorites = await getFavorites();
    // final bool isFavorite = await this.isFavorite(tvShow);

    // if (isFavorite) {
    //   favorites.removeWhere((element) => element.id == tvShow.id);
    // } else {
    //   favorites.add(tvShow);
    // }

    //   prefs.setString('favorites', TvShow.encode(favorites));
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
