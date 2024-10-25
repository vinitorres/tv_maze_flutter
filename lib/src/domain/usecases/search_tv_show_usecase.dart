import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';
import '../repositories/tv_maze_repository.dart';

abstract class ISearchTvShowUsecase {
  Future<Either<HttpFailure, List<TvShow>>> call(String name, [int page = 0]);
}

class SearchTvShowUsecase implements ISearchTvShowUsecase {
  final ITvMazeRepository _tvMazeRepository;

  SearchTvShowUsecase(this._tvMazeRepository);

  @override
  Future<Either<HttpFailure, List<TvShow>>> call(String name, [int page = 0]) {
    return _tvMazeRepository.searchTvShows(query: name, page: page);
  }
}
