import 'package:fpdart/fpdart.dart';

import '../../domain/domain.dart';
import '../datasources/local/favorites_local_datasource.dart';

/// Implementation of [IFavoritesRepository]
class FavoritesRepository implements IFavoritesRepository {
  final IFavoritesLocalDataSource _favoritesLocalDataSource;

  /// Constructor [FavoritesRepository]
  FavoritesRepository(this._favoritesLocalDataSource);

  @override
  Future<Either<HttpFailure, List<TvShow>>> getFavorites() async {
    try {
      final favorites = await _favoritesLocalDataSource.getFavorites();
      return Right(favorites);
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }

  @override
  Future<void> toggleFavorite(TvShow tvShow) async {
    // await _favoritesLocalDataSource.toggleFavorite(tvShow);
  }

  @override
  Future<bool> isFavorite(TvShow tvShow) async {
    return await _favoritesLocalDataSource.isFavorite(tvShow);
  }
}
