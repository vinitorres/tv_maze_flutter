import 'package:dio/dio.dart';

import '../../models/models.dart';

class TvMazeEndpoints {
  static const String tvShows = 'shows?page={page}';
  static const String episodes = 'shows/{id}/episodes';
  static const String search = 'search';
  static const String cast = 'cast';
  static const String people = 'people';
  static const String castcredits = 'castcredits';
}

abstract class ITvMazeDataSource {
  Future<List<TvShowModel>> getTvShows({int page = 0});
  Future<List<EpisodeModel>> getEpisodes({required int id});
  Future<List<TvShowModel>> searchTvShow({required String query});
  Future<List<ActorModel>> getCast({required int tvShowId});
  Future<List<TvShowModel>> getActorSeries({required int actorId});
}

class TvMazeDataSource implements ITvMazeDataSource {
  static const String _baseUrl = String.fromEnvironment(
    'tvMazeBaseUrl',
    defaultValue: String.fromEnvironment('tvMazeBaseUrl'),
  );

  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<List<TvShowModel>> getTvShows({int page = 0}) async {
    var tvShows = <TvShowModel>[];
    try {
      var result = await _dio
          .get(TvMazeEndpoints.tvShows.replaceFirst('{page}', page.toString()));
      for (var element in result.data) {
        tvShows.add(TvShowModel.fromJson(element));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }

  @override
  Future<List<EpisodeModel>> getEpisodes({required int id}) async {
    var episodes = <EpisodeModel>[];
    try {
      var result = await _dio
          .get(TvMazeEndpoints.episodes.replaceFirst('{id}', id.toString()));
      for (var element in result.data) {
        episodes.add(EpisodeModel.fromJson(element));
      }
    } catch (e) {
      print(e);
    }
    return episodes;
  }

  @override
  Future<List<TvShowModel>> searchTvShow({required String query}) async {
    var tvShows = <TvShowModel>[];
    try {
      var result = await _dio.get('search/shows?q=$query');
      for (var element in result.data) {
        tvShows.add(TvShowModel.fromJson(element['show']));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }

  @override
  Future<List<ActorModel>> getCast({required int tvShowId}) async {
    var actors = <ActorModel>[];
    try {
      var result = await _dio.get('shows/$tvShowId/cast');
      for (var element in result.data) {
        actors.add(ActorModel.fromJson(element['person']));
      }
    } catch (e) {
      print(e);
    }
    return actors;
  }

  @override
  Future<List<TvShowModel>> getActorSeries({required int actorId}) async {
    var tvShows = <TvShowModel>[];
    try {
      var result = await _dio.get('people/$actorId/castcredits');
      for (var element in result.data) {
        var result = await Dio().get(element['_links']['show']['href']);
        var json2 = result.data;
        tvShows.add(TvShowModel.fromJson(json2));
      }
    } catch (e) {
      print(e);
    }
    return tvShows;
  }
}
