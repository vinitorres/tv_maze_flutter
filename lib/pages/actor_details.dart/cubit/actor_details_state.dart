part of 'actor_details_cubit.dart';

abstract class ActorDetailsState {}

class ActorDetailsInitial extends ActorDetailsState {}

class ActorDetailsLoading extends ActorDetailsState {}

class ActorDetailsLoaded extends ActorDetailsState {
  ActorDetailsLoaded(this.actorSeries);

  final List<TvShow> actorSeries;
}

class ActorDetailsError extends ActorDetailsState {}
