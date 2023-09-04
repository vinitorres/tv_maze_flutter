import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tv_shows_app/datasources/local/favorites_local_data_source.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  late FavoritesLocalDataSource favoritesLocalDataSource;

  setUpAll(() {
    favoritesLocalDataSource = FavoritesLocalDataSourceImpl();
  });

  group('GetFavorites', () {
    test('verify return is empty array when user doesnt have favorities yet',
        () async {
      // arrange
      final favorites = await favoritesLocalDataSource.getFavorites();
      expect(0, favorites.length);
    });

    test('verify length 1 after insert one favority yet', () async {
      
      final favorites = await favoritesLocalDataSource.getFavorites();
      expect(0, favorites.length);
    });
  });

  group('SetFavorite', () {
    test('verify if favorite is added when user doesnt have it yet', () async {
      // arrange

      // act
      // assert
    });

    test('verify if favorite is removed when user already have it', () async {
      // arrange

      // act
      // assert
    });
  });

  group('IsFavorite', () {
    test('verify if favorite is true when user already have it', () async {
      // arrange

      // act
      // assert
    });

    test('verify if favorite is false when user doesnt have it yet', () async {
      // arrange

      // act
      // assert
    });
  });
}
