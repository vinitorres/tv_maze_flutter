import 'package:dio/dio.dart';
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/entities/episode.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

abstract class TvMazeService {
  Future<List<TvShow>> getTvShows({int page = 0});
  Future<List<Episode>> getEpisodes({required int id});
  Future<List<TvShow>> searchTvShow({required String query});
  Future<List<Actor>> getActors({required int tvShowId});
  Future<List<TvShow>> getActorSeries({required int actorId});
}

class TvMazeServiceImpl implements TvMazeService {
  static const String _baseUrl = 'https://api.tvmaze.com/';
  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<List<TvShow>> getTvShows({int page = 0}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('shows?page=$page');
      for (var element in result.data) {
        tvShows.add(TvShow.fromJson(element));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }

  Future<List<Episode>> getEpisodes({required int id}) async {
    var episodes = <Episode>[];
    try {
      var result = await _dio.get('shows/$id/episodes');
      for (var element in result.data) {
        episodes.add(Episode.fromJson(element));
      }
    } catch (e) {
      print(e);
    }
    return episodes;
  }

  Future<List<TvShow>> searchTvShow({required String query}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('search/shows?q=$query');
      for (var element in result.data) {
        tvShows.add(TvShow.fromJson(element['show']));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }

  Future<List<Actor>> getActors({required int tvShowId}) async {
    var actors = <Actor>[];
    try {
      var result = await _dio.get('shows/$tvShowId/cast');
      for (var element in result.data) {
        actors.add(Actor.fromJson(element['person']));
      }
    } catch (e) {
      print(e);
    }
    return actors;
  }

  Future<List<TvShow>> getActorSeries({required int actorId}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('people/$actorId/castcredits');
      for (var element in result.data) {
        var result = await Dio().get(element['_links']['show']['href']);
        var json2 = result.data;
        tvShows.add(TvShow.fromJson(json2));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }
}
