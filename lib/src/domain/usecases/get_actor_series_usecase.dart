import 'package:fpdart/fpdart.dart';

import '../entities/tv_show.dart';
import '../repositories/tv_maze_repository.dart';

abstract class IGetActorSeriesUsecase {
  Future<Either<Exception, List<TvShow>>> call(int actorId);
}

class GetActorSeriesUsecase implements IGetActorSeriesUsecase {
  final ITvMazeRepository _repository;

  GetActorSeriesUsecase(this._repository);

  @override
  Future<Either<Exception, List<TvShow>>> call(int actorId) {
    return _repository.getActorSeries(actorId);
  }
}
