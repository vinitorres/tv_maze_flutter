// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';
import 'package:tv_shows_app/src/data/datasources/remote/tv_maze_datasource.dart';
import 'package:tv_shows_app/src/domain/entities/actor.dart';
import 'package:tv_shows_app/src/domain/entities/episode.dart';
import 'package:tv_shows_app/src/domain/entities/tv_show.dart';

import '../../domain/repositories/tv_maze_repository.dart';

class TvMazeRepository implements ITvMazeRepository {
  final ITvMazeDataSource _tvMazeDataSource;

  TvMazeRepository(
    this._tvMazeDataSource,
  );

  @override
  Future<Either<Exception, List<TvShow>>> getTvShows([int page = 0]) async {
    try {
      final response = await _tvMazeDataSource.getTvShows(page: page);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(e as Exception);
    }
  }

  @override
  Future<Either<Exception, List<TvShow>>> searchTvShows(
      {required String name, int? page = 0}) async {
    try {
      final response = await _tvMazeDataSource.searchTvShow(query: name);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(e as Exception);
    }
  }

  @override
  Future<Either<Exception, List<Episode>>> getEpisodes(int tvShowId) async {
    try {
      final response = await _tvMazeDataSource.getEpisodes(id: tvShowId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(e as Exception);
    }
  }

  @override
  Future<Either<Exception, List<Actor>>> getActors(int tvShowId) async {
    try {
      final response = await _tvMazeDataSource.getCast(tvShowId: tvShowId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(e as Exception);
    }
  }

  @override
  Future<Either<Exception, List<TvShow>>> getActorSeries(int actorId) async {
    try {
      final response = await _tvMazeDataSource.getActorSeries(actorId: actorId);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
