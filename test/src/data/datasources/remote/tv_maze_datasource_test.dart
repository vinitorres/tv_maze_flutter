import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/src/src.dart';

import '../../../mocks.dart';
import '../../../stubs/tv_maze_datasource_stubs.dart';

void main() {
  late ITvMazeDataSource datasource;
  late IHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    datasource = TvMazeDataSource(mockHttpClient);
  });

  group('TvMazeDataSource tests', () {
    group('getTvShows', () {
      test(
          'should return List<TvShowModel> when http client returns success response',
          () async {
        // Arrange
        final queryParams = {'page': '0'};
        when(() => mockHttpClient.get(any(), query: queryParams)).thenAnswer(
          (_) async => HttpResponse(
            status: HttpStatus.ok,
            data: successGetTvShows,
          ),
        );

        // Act
        final result = await datasource.getTvShows();

        // Assert
        expect(result, isA<List<TvShowModel>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        final queryParams = {'page': '0'};
        when(() => mockHttpClient.get(any(), query: queryParams)).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act & Assert
        expect(
          () => datasource.getTvShows(),
          throwsA(isA<IHttpException>()),
        );
      });
    });

    group('getEpisodes', () {
      test(
          'should return List<EpisodeModel> when http client returns success response',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => HttpResponse(
            status: HttpStatus.ok,
            data: successGetEpisodes,
          ),
        );

        // Act
        final result = await datasource.getEpisodes(id: 1);

        // Assert
        expect(result, isA<List<EpisodeModel>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act & Assert
        expect(
          () => datasource.getEpisodes(id: 1),
          throwsA(isA<IHttpException>()),
        );
      });
    });

    group('searchTvShows', () {
      test(
          'should return List<TvShowModel> when http client returns success response',
          () async {
        // Arrange
        final query = 'query';
        final queryParams = {'q': query};
        when(() => mockHttpClient.get(any(), query: queryParams)).thenAnswer(
          (_) async => HttpResponse(
            status: HttpStatus.ok,
            data: successSearch,
          ),
        );

        // Act
        final result = await datasource.searchTvShows(query: query);

        // Assert
        expect(result, isA<List<TvShowModel>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        final queryParams = {'q': 'query'};
        when(() => mockHttpClient.get(any(), query: queryParams)).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act & Assert
        expect(
          () => datasource.searchTvShows(query: 'query'),
          throwsA(isA<IHttpException>()),
        );
      });
    });

    group('getCast', () {
      test(
          'should return List<PersonModel> when http client returns success response',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => HttpResponse(
            status: HttpStatus.ok,
            data: successGetCast,
          ),
        );

        // Act
        final result = await datasource.getCast(tvShowId: 1);

        // Assert
        expect(result, isA<List<PersonModel>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act & Assert
        expect(
          () => datasource.getEpisodes(id: 1),
          throwsA(isA<IHttpException>()),
        );
      });
    });

    group('getActorSeries tests', () {
      test(
          'should return List<TvShowModel> when http client returns success response',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => HttpResponse(
            status: HttpStatus.ok,
            data: successGetActorSeries,
          ),
        );

        // Act
        final result = await datasource.getActorSeries(actorId: 1);

        // Assert
        expect(result, isA<List<TvShowModel>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act & Assert
        expect(
          () => datasource.getActorSeries(actorId: 1),
          throwsA(isA<IHttpException>()),
        );
      });
    });
  });
}
