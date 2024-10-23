import 'package:get_it/get_it.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';
import '../infrastructure.dart';
import '../../presentation/pages/actor_details/actor_details_view_model.dart';
import '../../presentation/pages/favorites/favorites_cubit.dart';
import '../../presentation/pages/tv_show_details/tv_show_details_cubit.dart';
import '../../presentation/pages/tv_shows/tv_shows_cubit.dart';
import '../../shared/constants/environment.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Dependency injection setup
initSetup() async {
  _binds();
  await _loadEnvironment();
}

_binds() {
  // Environment
  getIt.registerSingleton<Environment>(Environment());

  //HttpClient
  getIt.registerFactory<HttpClient>(() => HttpClientImpl(getIt()));

  // Data Sources
  getIt.registerFactory<ITvMazeDataSource>(TvMazeDataSource.new);
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

_loadEnvironment() async {
  await getIt<Environment>().loadEnvironment();
}
