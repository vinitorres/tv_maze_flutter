import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/pages/actor_details.dart/cubit/actor_details_cubit.dart';
import 'package:tv_shows_app/pages/favorites/cubit/favorites_cubit.dart';
import 'package:tv_shows_app/pages/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/pages/tv_shows/cubit/tv_shows_cubit.dart';
import 'package:tv_shows_app/shared/services/tv_maze_service.dart';

final getIt = GetIt.instance;

configureDependencies() {
  //Cubits
  getIt.registerLazySingleton(() => TvShowsCubit());
  getIt.registerFactory(() => TvShowDetailsCubit(getIt(), getIt()));
  getIt.registerFactory(() => ActorDetailsCubit(getIt()));
  getIt.registerLazySingleton(() => FavoritesCubit(getIt()));

  //Data Sources
  getIt.registerLazySingleton<TvShowsRemoteDataSource>(
      () => TvShowsRemoteDataSourceImpl(getIt()));
  getIt.registerLazySingleton<FavoritesLocalDataSource>(
      () => FavoritesLocalDataSourceImpl());

  //Services
  getIt.registerLazySingleton<TvMazeService>(() => TvMazeServiceImpl());
}
