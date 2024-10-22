import 'package:fpdart/fpdart.dart';
import 'package:tv_shows_app/src/domain/entities/actor.dart';
import 'package:tv_shows_app/src/domain/repositories/tv_maze_repository.dart';

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
