import 'package:dio/dio.dart';

import '../../../infrastructure/injection/dependency_injection.dart';
import '../../../shared/constants/environment.dart';
import '../../models/models.dart';

/// TvMaze API endpoints
class TvMazeEndpoints {
  /// Tv shows endpoint
  static const String tvShows = 'shows?page={page}';

  /// Episodes endpoint
  static const String episodes = 'shows/{id}/episodes';

  /// Search Tv Shows endpoint
  static const String search = 'search';

  /// Load cast endpoint
  static const String cast = 'cast';

  /// People endpoint
  static const String people = 'people';

  /// Cast credits endpoint
  static const String castcredits = 'castcredits';
}

/// TvMaze data source interface
abstract class ITvMazeDataSource {
  /// Get tv shows - load tv shows from the API with pagination
  Future<List<TvShowModel>> getTvShows({int page = 0});

  /// Get episodes - load episodes list from the API
  Future<List<EpisodeModel>> getEpisodes({required int id});

  /// Search tv show - search tv shows by query
  Future<List<TvShowModel>> searchTvShow({required String query});

  /// Get cast - load cast from the API
  Future<List<ActorModel>> getCast({required int tvShowId});

  /// Get actor series - load series from the API by actor id
  Future<List<TvShowModel>> getActorSeries({required int actorId});
}

/// Implementation of [ITvMazeDataSource]
class TvMazeDataSource implements ITvMazeDataSource {
  late final String _baseUrl = getIt.get<Environment>().tvMazeBaseUrl;

  late final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<List<TvShowModel>> getTvShows({int page = 0}) async {
    final result = await _dio
        .get(TvMazeEndpoints.tvShows.replaceFirst('{page}', page.toString()));

    final data = result.data;
    return data.map((e) => TvShowModel.fromJson(e)).toList();
  }

  @override
  Future<List<EpisodeModel>> getEpisodes({required int id}) async {
    final result = await _dio
        .get(TvMazeEndpoints.episodes.replaceFirst('{id}', id.toString()));
    return (result.data as List).map((e) => EpisodeModel.fromJson(e)).toList();
  }

  @override
  Future<List<TvShowModel>> searchTvShow({required String query}) async {
    final result = await _dio.get('search/shows?q=$query');
    return (result.data as List)
        .map((e) => TvShowModel.fromJson(e['show']))
        .toList();
  }

  @override
  Future<List<ActorModel>> getCast({required int tvShowId}) async {
    final result = await _dio.get('shows/$tvShowId/cast');
    return (result.data as List).map((e) => ActorModel.fromJson(e)).toList();
  }

  @override
  Future<List<TvShowModel>> getActorSeries({required int actorId}) async {
    final result = await _dio.get('people/$actorId/castcredits');
    return (result.data as List)
        .map((e) => TvShowModel.fromJson(e['show']))
        .toList();
  }
}
