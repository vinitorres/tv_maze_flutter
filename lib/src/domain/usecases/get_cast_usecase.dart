import 'package:fpdart/fpdart.dart';

import '../entities/person.dart';
import '../failures/failures.dart';
import '../repositories/tv_maze_repository.dart';

abstract class IGetCastUsecase {
  Future<Either<HttpFailure, List<Person>>> call(int tvShowId);
}

class GetCastUsecase implements IGetCastUsecase {
  final ITvMazeRepository _repository;

  GetCastUsecase(this._repository);

  @override
  Future<Either<HttpFailure, List<Person>>> call(int tvShowId) {
    return _repository.getCast(tvShowId);
  }
}
