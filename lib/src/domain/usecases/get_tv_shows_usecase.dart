import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';
import '../repositories/repositories.dart';

abstract class IGetTvShowsUsecase {
  Future<Either<HttpFailure, List<TvShow>>> call();
}

class GetTvShowsUsecase implements IGetTvShowsUsecase {
  final ITvMazeRepository _repository;

  GetTvShowsUsecase(this._repository);

  @override
  Future<Either<HttpFailure, List<TvShow>>> call() {
    return _repository.getTvShows();
  }
}