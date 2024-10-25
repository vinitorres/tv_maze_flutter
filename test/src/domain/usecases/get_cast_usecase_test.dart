import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/src/src.dart';

import '../../mocks.dart';

void main() {
  late IGetCastUsecase usecase;
  late ITvMazeRepository mockRepository;

  setUp(() {
    mockRepository = MockTvMazeRepository();
    usecase = GetCastUsecase(mockRepository);
  });

  group('GetCastUsecase tests', () {
    test(
        'should return Right<List<Person>> when repository returns success response',
        () async {
      // Arrange
      when(() => mockRepository.getCast(1)).thenAnswer(
        (_) async => Right([
          Person(
            id: 1,
            name: 'name',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
          Person(
            id: 2,
            name: 'name',
            imageSource: ImageSource(original: 'original', medium: 'medium'),
          ),
        ]),
      );

      // Act
      final result = await usecase(1);

      // Assert
      expect(result.isRight(), true);
      expect((result as Right).value, isA<List<Person>>());
    });

    test('should throw IHttpException when http client throws IHttpException',
        () async {
      // Arrange
      when(() => mockRepository.getCast(1)).thenAnswer(
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
