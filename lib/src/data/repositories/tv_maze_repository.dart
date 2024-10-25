// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';

import '../../domain/domain.dart';
import '../datasources/datasources.dart';

class TvMazeRepository implements ITvMazeRepository {
  final ITvMazeDataSource _tvMazeDataSource;

  TvMazeRepository(
    this._tvMazeDataSource,
  );

  @override
  Future<Either<HttpFailure, List<TvShow>>> getTvShows([int page = 0]) async {
    try {
      final response = await _tvMazeDataSource.getTvShows(page: page);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }

  @override
  Future<Either<HttpFailure, List<TvShow>>> searchTvShows({
    required String query,
    int? page = 0,
  }) async {
    try {
      final response = await _tvMazeDataSource.searchTvShows(query: query);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }

  @override
  Future<Either<HttpFailure, List<Episode>>> getEpisodes(int tvShowId) async {
    try {
      final response = await _tvMazeDataSource.getEpisodes(id: tvShowId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }

  @override
  Future<Either<HttpFailure, List<Person>>> getCast(int tvShowId) async {
    try {
      final response = await _tvMazeDataSource.getCast(tvShowId: tvShowId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }

  @override
  Future<Either<HttpFailure, List<TvShow>>> getActorSeries(int actorId) async {
    try {
      final response = await _tvMazeDataSource.getActorSeries(actorId: actorId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(HttpFailure(e.toString()));
    }
  }
}
