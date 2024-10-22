import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../repositories/favorites_repository.dart';

abstract class IGetFavoritiesUsecase {
  Future<Either<Exception, List<TvShow>>> call();
}

class GetFavoritiesUsecase implements IGetFavoritiesUsecase {
  final IFavoritesRepository _repository;

  GetFavoritiesUsecase(this._repository);

  @override
  Future<Either<Exception, List<TvShow>>> call() {
    return _repository.getFavorites();
  }
}