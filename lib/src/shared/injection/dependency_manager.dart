// ignore_for_file: non_constant_identifier_names

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:yaml/yaml.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../domain/entities/environment.dart';
import '../../infrastructure/network/http_adapter.dart';
import '../../presentation/pages/pages.dart';

/// GetIt instance
final DM = GetIt.instance;

/// Dependency injection setup
initSetup() async {
  await _asyncBinds();
  await DM.allReady();
  _binds();
}

_asyncBinds() async {
  // Environment
  DM.registerSingletonAsync<Environment>(
    () async => _loadEnvironment(),
  );
}

_binds() {
  //HttpClient
  DM.registerLazySingleton<IHttpClient>(
    () => HttpAdapter(
      baseUrl: DM<Environment>().tvMazeBaseUrl,
    ),
  );

  // Data Sources
  DM.registerFactory<ITvMazeDataSource>(
    () => TvMazeDataSource(DM()),
  );
  DM.registerFactory<IFavoritesLocalDataSource>(
    FavoritesLocalDataSource.new,
  );

  // Repositories
  DM.registerFactory<ITvMazeRepository>(
    () => TvMazeRepository(DM()),
  );
  DM.registerFactory<IFavoritesRepository>(
    () => FavoritesRepository(DM()),
  );

  // Use Cases
  DM.registerFactory<IGetTvShowsUsecase>(() => GetTvShowsUsecase(DM()));
  DM.registerFactory<ISearchTvShowUsecase>(
    () => SearchTvShowUsecase(DM()),
  );
  DM.registerFactory<IGetEpisodesUsecase>(() => GetEpisodesUsecase(DM()));
  DM.registerFactory<IGetCastUsecase>(() => GetCastUsecase(DM()));
  DM.registerFactory<IGetActorSeriesUsecase>(
    () => GetActorSeriesUsecase(DM()),
  );
  DM.registerFactory<IIsFavoriteUsecase>(() => IsFavoriteUsecase(DM()));
  DM.registerFactory<IToggleFavoriteUsecase>(
    () => ToggleFavoriteUsecase(DM()),
  );
  DM.registerFactory<IGetFavoritiesUsecase>(
    () => GetFavoritiesUsecase(DM()),
  );

  //ViewModels
  DM.registerLazySingleton(
    () => TvShowsViewModel(
      DM<IGetTvShowsUsecase>(),
      DM<ISearchTvShowUsecase>(),
    ),
  );
  DM.registerFactory(
    () => TvShowDetailsViewModel(
      DM<IToggleFavoriteUsecase>(),
      DM<IIsFavoriteUsecase>(),
    ),
  );
  DM.registerFactory(
    () => CastSectionViewModel(
      DM<IGetCastUsecase>(),
    ),
  );
  DM.registerFactory(
    () => EpisodesSectionViewModel(
      DM<IGetEpisodesUsecase>(),
    ),
  );
  DM.registerFactory(
    () => ActorDetailsViewModel(
      DM<IGetActorSeriesUsecase>(),
    ),
  );
  DM.registerFactory(
    () => FavoritesViewModel(
      DM<IGetFavoritiesUsecase>(),
    ),
  );
}

/// Load environment variables
Future<Environment> _loadEnvironment() async {
  final String yamlString = await rootBundle.loadString('assets/env/env.yaml');
  final Map yamlMap = loadYaml(yamlString);
  return Environment(tvMazeBaseUrl: yamlMap['tvMazeBaseUrl']);
}
