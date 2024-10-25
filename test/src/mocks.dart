import 'package:mocktail/mocktail.dart';
import 'package:tv_shows_app/tv_shows_app.dart';

class MockHttpClient extends Mock implements IHttpClient {}

class MockTvMazeDataSource extends Mock implements ITvMazeDataSource {}

class MockTvMazeRepository extends Mock implements ITvMazeRepository {}
