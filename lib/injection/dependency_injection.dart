import 'package:get_it/get_it.dart';
import 'package:tv_shows_app/data/data_sources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/features/tv_show_details/cubit/tv_show_details_cubit.dart';
import 'package:tv_shows_app/features/tv_shows/cubit/tv_shows_cubit.dart';
import 'package:tv_shows_app/services/tv_maze_service.dart';

final getIt = GetIt.instance;

configureDependencies() {
  //Cubits
  getIt.registerFactory(() => TvShowsCubit(getIt()));
  getIt.registerFactory(() => TvShowDetailsCubit(getIt()));

  //Data Sources
  getIt.registerLazySingleton(() => TvShowsRemoteDataSource(getIt()));

  //Services
  getIt.registerLazySingleton(() => TvMazeService());
}
