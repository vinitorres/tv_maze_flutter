import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

abstract class IFavoritesRepository {
  // This method will be used to get the list of favorite TV shows
  Future<Either<HttpFailure, List<TvShow>>> getFavorites();

  // This method will be used to toggle a TV show as favorite
  Future<void> toggleFavorite(TvShow tvShow);

  // This method will be used to check if a TV show is favorite
  Future<bool> isFavorite(TvShow tvShow);
}
