import 'package:fpdart/fpdart.dart';
import 'package:tv_shows_app/src/domain/repositories/tv_maze_repository.dart';

import '../entities/tv_show.dart';

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
