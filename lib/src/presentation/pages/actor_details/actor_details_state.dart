// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'actor_details_view_model.dart';

enum ActorDetailsStatus { initial, loading, loaded, error }

class ActorDetailsState {
  final ActorDetailsStatus status;
  final List<TvShow>? actorSeries;

  ActorDetailsState({
    required this.status,
    this.actorSeries,
  });

  ActorDetailsState copyWith({
    ActorDetailsStatus? status,
    List<TvShow>? actorSeries,
  }) {
    return ActorDetailsState(
      status: status ?? this.status,
      actorSeries: actorSeries ?? this.actorSeries,
    );
  }
}
