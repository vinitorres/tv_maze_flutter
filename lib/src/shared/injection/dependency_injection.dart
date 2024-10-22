import 'package:get_it/get_it.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../infrastructure/infrastructure.dart';
import '../../presentation/pages/actor_details/actor_details_view_model.dart';
import '../../presentation/pages/favorites/favorites_cubit.dart';
import '../../presentation/pages/tv_show_details/tv_show_details_cubit.dart';
import '../../presentation/pages/tv_shows/tv_shows_cubit.dart';

final getIt = GetIt.instance;

configureDependencies() {
  //HttpClient
  getIt.registerFactory<HttpClient>(() => HttpClientImpl(getIt()));

  // Data Sources
  getIt.registerFactory<ITvMazeDataSource>(() => TvMazeDataSource());

  // Repositories
  getIt.registerLazySingleton<ITvMazeRepository>(
      () => TvMazeRepository(getIt()));
  getIt.registerLazySingleton<IFavoritesRepository>(
      () => FavoritesRepository(getIt()));

  // Use Cases
  getIt.registerFactory<IGetTvShowsUsecase>(() => GetTvShowsUsecase(getIt()));
  getIt.registerFactory<IGetEpisodesUsecase>(() => GetEpisodesUsecase(getIt()));
  getIt.registerFactory<IGetCastUsecase>(() => GetCastUsecase(getIt()));
  getIt.registerFactory<IGetActorSeriesUsecase>(
      () => GetActorSeriesUsecase(getIt()));
  getIt.registerFactory<IIsFavoriteUsecase>(() => IsFavoriteUsecase(getIt()));
  getIt.registerFactory<IToggleFavoriteUsecase>(
      () => ToggleFavoriteUsecase(getIt()));
  getIt.registerFactory<IGetFavoritiesUsecase>(
      () => GetFavoritiesUsecase(getIt()));

  //Cubits
  getIt.registerLazySingleton(() => TvShowsCubit(getIt(), getIt()));
  getIt.registerFactory(() => TvShowDetailsCubit(getIt<IGetEpisodesUsecase>(),
      getIt<IGetCastUsecase>(), getIt(), getIt()));
  getIt.registerFactory(() => ActorDetailsViewModel(getIt()));
  getIt.registerLazySingleton(() => FavoritesCubit(getIt()));
}
