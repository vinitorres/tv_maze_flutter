part of 'tv_shows_cubit.dart';

abstract class TvShowsState {}

class TvShowsInitial extends TvShowsState {}

class TvShowsLoading extends TvShowsState {}

class TvShowsLoadingMore extends TvShowsState {}

class TvShowsLoaded extends TvShowsState {}

class TvShowsEmpty extends TvShowsState {}

class TvShowsError extends TvShowsState {}
