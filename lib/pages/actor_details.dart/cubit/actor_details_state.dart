// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'actor_details_cubit.dart';

enum ActorDetailsStatus { initial, loading, loaded, error }

class ActorDetailsState extends Equatable {
  final ActorDetailsStatus status;
  List<TvShow>? actorSeries;

  ActorDetailsState({
    required this.status,
    this.actorSeries,
  });

  @override
  List<Object?> get props => [this.status, this.actorSeries];

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
