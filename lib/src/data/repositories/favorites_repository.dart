import 'package:fpdart/fpdart.dart';
import 'package:tv_shows_app/src/domain/entities/tv_show.dart';

import '../../domain/repositories/favorites_repository.dart';
import '../datasources/local/favorites_local_datasource.dart';

class FavoritesRepository implements IFavoritesRepository {
  final IFavoritesLocalDataSource _favoritesLocalDataSource;

  FavoritesRepository(this._favoritesLocalDataSource);

  @override
  Future<Either<Exception, List<TvShow>>> getFavorites() async {
    try {
      final favorites = await _favoritesLocalDataSource.getFavorites();
      return Right(favorites);
    } catch (e) {
      return Left(e as Exception);
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
