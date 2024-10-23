import '../entities/entities.dart';
import '../repositories/favorites_repository.dart';

abstract class IToggleFavoriteUsecase {
  Future<void> call(TvShow tvShow);
}

class ToggleFavoriteUsecase implements IToggleFavoriteUsecase {
  final IFavoritesRepository _favoritesLocalDataSource;

  ToggleFavoriteUsecase(this._favoritesLocalDataSource);

  @override
  Future<void> call(TvShow tvShow) async {
    await _favoritesLocalDataSource.toggleFavorite(tvShow);
  }
}
