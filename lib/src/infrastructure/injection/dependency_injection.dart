import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:yaml/yaml.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../domain/entities/environment.dart';
import '../../presentation/pages/actor_details/actor_details_view_model.dart';
import '../../presentation/pages/favorites/favorites_cubit.dart';
import '../../presentation/pages/tv_show_details/tv_show_details_cubit.dart';
import '../../presentation/pages/tv_shows/tv_shows_cubit.dart';
import '../network/http_adapter.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Dependency injection setup
initSetup() async {
  await _asyncBinds();
  _binds();
}

_asyncBinds() async {
  // Environment
  getIt.registerSingletonAsync<Environment>(
    () async => _loadEnvironment(),
  );
}

_binds() {
  //HttpClient
  getIt.registerLazySingleton<IHttpClient>(
    () => HttpAdapter(
      baseUrl: getIt<Environment>().tvMazeBaseUrl,
    ),
  );

  // Data Sources
  getIt.registerFactory<ITvMazeDataSource>(
    () => TvMazeDataSource(getIt()),
  );
  getIt.registerFactory<IFavoritesLocalDataSource>(
    FavoritesLocalDataSource.new,
  );

  // Repositories
  getIt.registerLazySingleton<ITvMazeRepository>(
    () => TvMazeRepository(getIt()),
  );
  getIt.registerLazySingleton<IFavoritesRepository>(
    () => FavoritesRepository(getIt()),
  );

  // Use Cases
  getIt.registerFactory<IGetTvShowsUsecase>(() => GetTvShowsUsecase(getIt()));
  getIt.registerFactory<ISearchTvShowUsecase>(
    () => SearchTvShowUsecase(getIt()),
  );
  getIt.registerFactory<IGetEpisodesUsecase>(() => GetEpisodesUsecase(getIt()));
  getIt.registerFactory<IGetCastUsecase>(() => GetCastUsecase(getIt()));
  getIt.registerFactory<IGetActorSeriesUsecase>(
    () => GetActorSeriesUsecase(getIt()),
  );
  getIt.registerFactory<IIsFavoriteUsecase>(() => IsFavoriteUsecase(getIt()));
  getIt.registerFactory<IToggleFavoriteUsecase>(
    () => ToggleFavoriteUsecase(getIt()),
  );
  getIt.registerFactory<IGetFavoritiesUsecase>(
    () => GetFavoritiesUsecase(getIt()),
  );

  //Cubits
  getIt.registerLazySingleton(() => TvShowsCubit(getIt(), getIt()));
  getIt.registerLazySingleton(
    () => TvShowDetailsCubit(
      getIt<IGetEpisodesUsecase>(),
      getIt<IGetCastUsecase>(),
      getIt(),
      getIt(),
    ),
  );
  getIt.registerLazySingleton(() => ActorDetailsViewModel(getIt()));
  getIt.registerLazySingleton(() => FavoritesCubit(getIt()));
}

/// Load environment variables
Future<Environment> _loadEnvironment() async {
  final String yamlString = await rootBundle.loadString('assets/env/env.yaml');
  final Map yamlMap = loadYaml(yamlString);
  return Environment(tvMazeBaseUrl: yamlMap['tvMazeBaseUrl']);
}
