import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';

abstract class ITvMazeRepository {
  Future<Either<Exception, List<TvShow>>> getTvShows([int page = 0]);
  Future<Either<Exception, List<TvShow>>> searchTvShows(
      {required String name, int? page = 0});
  Future<Either<Exception, List<Episode>>> getEpisodes(int tvShowId);
  Future<Either<Exception, List<Actor>>> getActors(int tvShowId);
  Future<Either<Exception, List<TvShow>>> getActorSeries(int actorId);
}
