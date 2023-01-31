part of 'tv_show_details_cubit.dart';

abstract class TvShowDetailsState {}

class TvShowDetailsInitial extends TvShowDetailsState {}

class TvShowDetailsLoadingEpisodes extends TvShowDetailsState {}

class TvShowDetailsLoadedEpisodes extends TvShowDetailsState {
  TvShowDetailsLoadedEpisodes({required this.episodes});

  final List<Episode> episodes;
}

class TvShowDetailsErrorEpisodes extends TvShowDetailsState {}

class TvShowDetailsLoadingCast extends TvShowDetailsState {}

class TvShowDetailsLoadedCast extends TvShowDetailsState {
  TvShowDetailsLoadedCast({required this.cast});

  final List<Actor> cast;
}

class TvShowDetailsErrorCast extends TvShowDetailsState {}
