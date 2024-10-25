import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

abstract class ITvMazeRepository {
  Future<Either<HttpFailure, List<TvShow>>> getTvShows([int page = 0]);
  Future<Either<HttpFailure, List<TvShow>>> searchTvShows({
    required String query,
    int? page = 0,
  });
  Future<Either<HttpFailure, List<Episode>>> getEpisodes(int tvShowId);
  Future<Either<HttpFailure, List<Person>>> getCast(int tvShowId);
  Future<Either<HttpFailure, List<TvShow>>> getActorSeries(int actorId);
}
