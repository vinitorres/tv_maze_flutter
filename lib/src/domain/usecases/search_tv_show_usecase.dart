import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../repositories/tv_maze_repository.dart';

abstract class ISearchTvShowUsecase {
  Future<Either<Exception, List<TvShow>>> call(String name, [int page = 0]);
}

class SearchTvShowUsecase implements ISearchTvShowUsecase {
  final ITvMazeRepository _tvMazeRepository;

  SearchTvShowUsecase(this._tvMazeRepository);

  @override
  Future<Either<Exception, List<TvShow>>> call(String name, [int page = 0]) {
    return _tvMazeRepository.searchTvShows(name: name, page: page);
  }
}
