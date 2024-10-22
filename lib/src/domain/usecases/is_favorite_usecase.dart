import 'package:tv_shows_app/src/domain/repositories/favorites_repository.dart';

import '../entities/entities.dart';

abstract class IIsFavoriteUsecase {
  Future<bool> call(TvShow tvShow);
}

class IsFavoriteUsecase implements IIsFavoriteUsecase {
  final IFavoritesRepository _repository;

  IsFavoriteUsecase(this._repository);

  @override
  Future<bool> call(TvShow tvShowId) {
    return _repository.isFavorite(tvShowId);
  }
}