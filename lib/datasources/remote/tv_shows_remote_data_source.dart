// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/entities/episode.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

import 'package:tv_shows_app/shared/services/tv_maze_service.dart';

abstract class TvShowsRemoteDataSource {
  Future<List<TvShow>> getTvShows([int page = 0]);
  Future<List<TvShow>> searchTvShows({required String name, int? page = 0});
  Future<List<Episode>> getEpisodes(int tvShowId);
  Future<List<Actor>> getActors(int tvShowId);
  Future<List<TvShow>> getActorSeries(int actorId);
}

class TvShowsRemoteDataSourceImpl implements TvShowsRemoteDataSource {
  TvMazeService tvShowsService;

  TvShowsRemoteDataSourceImpl(
    this.tvShowsService,
  );

  Future<List<TvShow>> getTvShows([int page = 0]) async {
    return tvShowsService.getTvShows(page: page);
  }

  Future<List<TvShow>> searchTvShows(
      {required String name, int? page = 0}) async {
    return tvShowsService.searchTvShow(query: name);
  }

  Future<List<Episode>> getEpisodes(int tvShowId) async {
    return tvShowsService.getEpisodes(id: tvShowId);
  }

  Future<List<Actor>> getActors(int tvShowId) async {
    return tvShowsService.getActors(tvShowId: tvShowId);
  }

  Future<List<TvShow>> getActorSeries(int actorId) async {
    return tvShowsService.getActorSeries(actorId: actorId);
  }
}
