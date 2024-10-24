import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';
import '../repositories/tv_maze_repository.dart';

abstract class IGetEpisodesUsecase {
  Future<Either<HttpFailure, List<Episode>>> call(int tvShowId);
}

class GetEpisodesUsecase implements IGetEpisodesUsecase {
  final ITvMazeRepository _repository;

  GetEpisodesUsecase(this._repository);

  @override
  Future<Either<HttpFailure, List<Episode>>> call(int tvShowId) {
    return _repository.getEpisodes(tvShowId);
  }
}
