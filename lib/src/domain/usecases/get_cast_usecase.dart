import 'package:fpdart/fpdart.dart';

import '../entities/actor.dart';
import '../repositories/tv_maze_repository.dart';

abstract class IGetCastUsecase {
  Future<Either<Exception, List<Actor>>> call(int tvShowId);
}

class GetCastUsecase implements IGetCastUsecase {
  final ITvMazeRepository _repository;

  GetCastUsecase(this._repository);

  @override
  Future<Either<Exception, List<Actor>>> call(int tvShowId) {
    return _repository.getActors(tvShowId);
  }
}
