import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';

import '../failures/failures.dart';
import '../repositories/favorites_repository.dart';

abstract class IGetFavoritiesUsecase {
  Future<Either<HttpFailure, List<TvShow>>> call();
}

class GetFavoritiesUsecase implements IGetFavoritiesUsecase {
  final IFavoritesRepository _repository;

  GetFavoritiesUsecase(this._repository);

  @override
  Future<Either<HttpFailure, List<TvShow>>> call() {
    return _repository.getFavorites();
  }
}