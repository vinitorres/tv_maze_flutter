import '../../interfaces/interfaces.dart';
import '../../models/models.dart';

/// TvMaze API endpoints
class TvMazeEndpoints {
  /// Tv shows endpoint
  static const String tvShows = 'shows';

  /// Episodes endpoint
  static const String episodes = 'shows/{id}/episodes';

  /// Search Tv Shows endpoint
  static const String search = 'search/shows';

  /// Load cast endpoint
  static const String cast = 'shows/{tvShowId}/cast';

  /// People endpoint
  static const String actorSeries = 'people/{actorId}/castcredits?embed=show';
}

/// TvMaze data source interface
abstract class ITvMazeDataSource {
  /// Get tv shows - load tv shows from the API with pagination
  Future<List<TvShowModel>> getTvShows({int page = 0});

  /// Get episodes - load episodes list from the API
  Future<List<EpisodeModel>> getEpisodes({required int id});

  /// Search tv show - search tv shows by query
  Future<List<TvShowModel>> searchTvShows({required String query});

  /// Get cast - load cast from the API
  Future<List<PersonModel>> getCast({required int tvShowId});

  /// Get actor series - load series from the API by actor id
  Future<List<TvShowModel>> getActorSeries({required int actorId});
}

/// Implementation of [ITvMazeDataSource]
class TvMazeDataSource implements ITvMazeDataSource {
  final IHttpClient _httpClient;

  TvMazeDataSource(this._httpClient);

  @override
  Future<List<TvShowModel>> getTvShows({int page = 0}) async {
    final queryParams = {'page': page.toString()};
    final response =
        await _httpClient.get(TvMazeEndpoints.tvShows, query: queryParams);

    return response.data.map<TvShowModel>((e) {
      final json = e as Map<String, dynamic>;
      return TvShowModel.fromJson(json);
    }).toList();
  }

  @override
  Future<List<EpisodeModel>> getEpisodes({required int id}) async {
    final response = await _httpClient
        .get(TvMazeEndpoints.episodes.replaceFirst('{id}', id.toString()));

    return response.data.map<EpisodeModel>((e) {
      final json = e as Map<String, dynamic>;
      return EpisodeModel.fromJson(json);
    }).toList();
  }

  @override
  Future<List<TvShowModel>> searchTvShows({required String query}) async {
    final queryParams = {'q': query};
    final response =
        await _httpClient.get(TvMazeEndpoints.search, query: queryParams);

    return response.data.map<TvShowModel>((e) {
      final json = e as Map<String, dynamic>;
      return TvShowModel.fromJson(json['show']);
    }).toList();
  }

  @override
  Future<List<PersonModel>> getCast({required int tvShowId}) async {
    final response = await _httpClient.get(
      TvMazeEndpoints.cast.replaceFirst('{tvShowId}', tvShowId.toString()),
    );

    return response.data.map<PersonModel>((e) {
      final json = e as Map<String, dynamic>;
      return PersonModel.fromJson(json['person']);
    }).toList();
  }

  @override
  Future<List<TvShowModel>> getActorSeries({required int actorId}) async {
    final response = await _httpClient.get(
      TvMazeEndpoints.actorSeries.replaceFirst('{actorId}', actorId.toString()),
    );

    return response.data.map<TvShowModel>((e) {
      final json = e as Map<String, dynamic>;
      return TvShowModel.fromJson(json['_embedded']['show']);
    }).toList();
  }
}
