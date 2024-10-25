import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/src/src.dart';

import '../../mocks.dart';

void main() {
  late ITvMazeRepository repository;
  late ITvMazeDataSource mockDatasource;

  setUp(() {
    mockDatasource = MockTvMazeDataSource();
    repository = TvMazeRepository(mockDatasource);
  });

  group('TvMazeRepository tests', () {
    group('getTvShows', () {
      test(
          'should return List<TvShow> when datasource returns success response',
          () async {
        // Arrange
        when(() => mockDatasource.getTvShows()).thenAnswer(
          (_) async => [
            TvShowModel(id: 1, name: 'name', summary: 'summary'),
            TvShowModel(id: 2, name: 'name', summary: 'summary'),
            TvShowModel(id: 3, name: 'name', summary: 'summary'),
          ],
        );

        // Act
        final result = await repository.getTvShows();

        // Assert
        expect(result.isRight(), true);
        expect((result as Right).value, isA<List<TvShow>>());
      });

      test('should throw IHttpException when http client throws IHttpException',
          () async {
        // Arrange
        when(() => mockDatasource.getTvShows()).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act
        final result = await repository.getTvShows();

        // Assert
        expect(result.isLeft(), true);
        expect((result as Left).value, isA<HttpFailure>());
      });
    });

    group('getEpisodes', () {
      test(
          'should return List<Episode> when datasource returns success response',
          () async {
        // Arrange
        when(() => mockDatasource.getEpisodes(id: 1)).thenAnswer(
          (_) async => [
            EpisodeModel(
              id: 1,
              name: 'name',
              season: 1,
              number: 1,
              summary: 'summary',
            ),
            EpisodeModel(
              id: 2,
              name: 'name',
              season: 1,
              number: 2,
              summary: 'summary',
            ),
            EpisodeModel(
              id: 3,
              name: 'name',
              season: 1,
              number: 3,
              summary: 'summary',
            ),
          ],
        );

        // Act
        final result = await repository.getEpisodes(1);

        // Assert
        expect(result.isRight(), true);
        expect((result as Right).value, isA<List<Episode>>());
      });

      test('should throw IHttpException when datasource throws IHttpException',
          () async {
        // Arrange
        when(() => mockDatasource.getEpisodes(id: 1)).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act
        final result = await repository.getEpisodes(1);

        // Assert
        expect(result.isLeft(), true);
        expect((result as Left).value, isA<HttpFailure>());
      });
    });

    group('searchTvShows', () {
      test(
          'should return List<TvShow> when datasource returns success response',
          () async {
        // Arrange
        when(() => mockDatasource.searchTvShows(query: 'query')).thenAnswer(
          (_) async => [
            TvShowModel(id: 1, name: 'query', summary: 'summary'),
            TvShowModel(id: 2, name: 'query', summary: 'summary'),
            TvShowModel(id: 3, name: 'query', summary: 'summary'),
          ],
        );

        // Act
        final result = await repository.searchTvShows(query: 'query');

        // Assert
        expect(result.isRight(), true);
        expect((result as Right).value, isA<List<TvShow>>());
      });

      test('should throw IHttpException when datasource throws IHttpException',
          () async {
        // Arrange
        when(() => mockDatasource.searchTvShows(query: 'query')).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act
        final result = await repository.searchTvShows(query: 'query');

        // Assert
        expect(result.isLeft(), true);
        expect((result as Left).value, isA<HttpFailure>());
      });
    });

    group('getCast', () {
      test(
          'should return List<Person> when datasource returns success response',
          () async {
        // Arrange
        when(() => mockDatasource.getCast(tvShowId: 1)).thenAnswer(
          (_) async => [
            PersonModel(id: 1, name: 'name', imageSource: ImageSourceModel()),
            PersonModel(id: 2, name: 'name', imageSource: ImageSourceModel()),
            PersonModel(id: 3, name: 'name', imageSource: ImageSourceModel()),
          ],
        );

        // Act
        final result = await repository.getCast(1);

        // Assert
        expect(result.isRight(), true);
        expect((result as Right).value, isA<List<Person>>());
      });

      test('should throw IHttpException when datasource throws IHttpException',
          () async {
        // Arrange
        when(() => mockDatasource.getCast(tvShowId: 1)).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act
        final result = await repository.getCast(1);

        // Assert
        expect(result.isLeft(), true);
        expect((result as Left).value, isA<HttpFailure>());
      });
    });

    group('getActorSeries tests', () {
      test(
          'should return List<TvShow> when datasource returns success response',
          () async {
        // Arrange
        when(() => mockDatasource.getActorSeries(actorId: 1)).thenAnswer(
          (_) async => [
            TvShowModel(id: 1, name: 'name', summary: 'summary'),
            TvShowModel(id: 2, name: 'name', summary: 'summary'),
            TvShowModel(id: 3, name: 'name', summary: 'summary'),
          ],
        );

        // Act
        final result = await repository.getActorSeries(1);

        // Assert
        expect(result.isRight(), true);
        expect((result as Right).value, isA<List<TvShow>>());
      });

      test('should throw IHttpException when datasource throws IHttpException',
          () async {
        // Arrange
        when(() => mockDatasource.getActorSeries(actorId: 1)).thenThrow(
          const ServerErrorException(
            message: 'Internal Server Error',
          ),
        );

        // Act
        final result = await repository.getActorSeries(1);

        // Assert
        expect(result.isLeft(), true);
        expect((result as Left).value, isA<HttpFailure>());
      });
    });
  });
}
