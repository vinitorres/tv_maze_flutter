import 'package:dio/dio.dart';
import 'package:tv_shows_app/core/data/domain/entities/actor.dart';
import 'package:tv_shows_app/core/data/domain/entities/episode.dart';
import 'package:tv_shows_app/core/data/domain/entities/tv_show.dart';

class TvMazeService {
  static const String _baseUrl = 'https://api.tvmaze.com/';
  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<List<TvShow>> getSchedule({String country = 'US'}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('schedule?country=$country');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        element['show']['airstamp'] = element['airstamp'];
        tvShows.add(TvShow.fromJson(element['show']));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return tvShows;
  }

  Future<List<TvShow>> getTvShows({int page = 0}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('shows?page=$page');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        tvShows.add(TvShow.fromJson(element));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return tvShows;
  }

  Future<List<Episode>> getEpisodes({required int id}) async {
    var episodes = <Episode>[];
    try {
      var result = await _dio.get('shows/$id/episodes');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        episodes.add(Episode.fromJson(element));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return episodes;
  }

  Future<List<TvShow>> searchTvShow({required String query}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('search/shows?q=$query');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        tvShows.add(TvShow.fromJson(element['show']));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return tvShows;
  }

  Future<List<Actor>> getActors({required int tvShowId}) async {
    var actors = <Actor>[];
    try {
      var result = await _dio.get('shows/$tvShowId/cast');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        actors.add(Actor.fromJson(element['person']));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return actors;
  }

  Future<List<TvShow>> getActorSeries({required int actorId}) async {
    var tvShows = <TvShow>[];
    try {
      var result = await _dio.get('people/$actorId/castcredits');
      var json = result.data as List<dynamic>;
      for (var element in json) {
        var result = await Dio().get(element['_links']['show']['href']);
        var json2 = result.data;
        tvShows.add(TvShow.fromJson(json2));
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return tvShows;
  }
}
