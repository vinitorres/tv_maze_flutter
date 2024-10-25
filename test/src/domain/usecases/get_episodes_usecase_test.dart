import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/src/src.dart';

import '../../mocks.dart';

void main() {
  late IGetEpisodesUsecase usecase;
  late ITvMazeRepository mockRepository;

  setUp(() {
    mockRepository = MockTvMazeRepository();
    usecase = GetEpisodesUsecase(mockRepository);
  });

  group('GetEpisodesUsecase tests', () {
    test(
        'should return Right<List<Episode>> when repository returns success response',
        () async {
      // Arrange
      when(() => mockRepository.getEpisodes(1)).thenAnswer(
        (_) async => Right([
          Episode(
            id: 1,
            number: 1,
            season: 1,
            name: 'name',
            summary: 'summary',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
          Episode(
            id: 2,
            number: 2,
            season: 1,
            name: 'name',
            summary: 'summary',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
        ]),
      );

      // Act
      final result = await usecase(1);

      // Assert
      expect(result.isRight(), true);
      expect((result as Right).value, isA<List<Episode>>());
    });

    test('should throw IHttpException when http client throws IHttpException',
        () async {
      // Arrange
      when(() => mockRepository.getEpisodes(1)).thenAnswer(
        (_) async => Left(HttpFailure('Internal Server Error')),
      );

      // Act
      final result = await usecase(1);

      // Assert
      expect(result.isLeft(), true);
      expect((result as Left).value, isA<HttpFailure>());
    });
  });
}
