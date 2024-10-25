import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/src/src.dart';

import '../../mocks.dart';

void main() {
  late IGetTvShowsUsecase usecase;
  late ITvMazeRepository mockRepository;

  setUp(() {
    mockRepository = MockTvMazeRepository();
    usecase = GetTvShowsUsecase(mockRepository);
  });

  group('GetTvShowsUsecase tests', () {
    test(
        'should return Right<List<TvShow>> when repository returns success response',
        () async {
      // Arrange
      when(() => mockRepository.getTvShows()).thenAnswer(
        (_) async => Right([
          TvShow(
            id: 1,
            name: 'name',
            summary: 'summary',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
          TvShow(
            id: 2,
            name: 'name',
            summary: 'summary',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
        ]),
      );

      // Act
      final result = await usecase();

      // Assert
      expect(result.isRight(), true);
      expect((result as Right).value, isA<List<TvShow>>());
    });

    test('should throw IHttpException when http client throws IHttpException',
        () async {
      // Arrange
      when(() => mockRepository.getTvShows()).thenAnswer(
        (_) async => Left(HttpFailure('Internal Server Error')),
      );

      // Act
      final result = await usecase();

      // Assert
      expect(result.isLeft(), true);
      expect((result as Left).value, isA<HttpFailure>());
    });
  });
}
