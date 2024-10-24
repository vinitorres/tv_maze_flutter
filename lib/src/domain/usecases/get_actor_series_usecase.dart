import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';
import '../repositories/repositories.dart';

abstract class IGetActorSeriesUsecase {
  Future<Either<HttpFailure, List<TvShow>>> call(int actorId);
}

class GetActorSeriesUsecase implements IGetActorSeriesUsecase {
  final ITvMazeRepository _repository;

  GetActorSeriesUsecase(this._repository);

  @override
  Future<Either<HttpFailure, List<TvShow>>> call(int actorId) {
    return _repository.getActorSeries(actorId);
  }
}
