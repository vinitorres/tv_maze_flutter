import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/core/data/datasources/local/auth_local_data_source.dart';
import 'package:tv_shows_app/core/data/datasources/local/favorites_local_data_source.dart';
import 'package:tv_shows_app/core/data/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/features/actor_details.dart/cubit/actor_details_cubit.dart';
import 'package:tv_shows_app/features/dialogs/pin_code/cubit/pin_code_cubit.dart';
import 'package:tv_shows_app/features/favorites/cubit/favorites_cubit.dart';
import 'package:tv_shows_app/features/settings_page/cubit/settings_cubit.dart';
import 'package:tv_shows_app/features/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/features/tv_shows/cubit/tv_shows_cubit.dart';
import 'package:tv_shows_app/shared/services/tv_maze_service.dart';

final getIt = GetIt.instance;

configureDependencies() {
  //Cubits
  getIt.registerLazySingleton(() => TvShowsCubit());
  getIt.registerFactory(() => TvShowDetailsCubit(getIt(), getIt()));
  getIt.registerFactory(() => ActorDetailsCubit(getIt()));
  getIt.registerLazySingleton(() => FavoritesCubit(getIt()));
  getIt.registerFactory(() => SettingsCubit(getIt()));
  getIt.registerFactory(() => PinCodeCubit(getIt()));

  //Data Sources
  getIt.registerLazySingleton(() => TvShowsRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => FavoritesLocalDataSource());
  getIt.registerLazySingleton(() => AuthLocalDataSource());

  //Services
  getIt.registerLazySingleton(() => TvMazeService());
}
