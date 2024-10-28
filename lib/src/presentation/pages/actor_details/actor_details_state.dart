import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'actor_details_state.freezed.dart';

@freezed
sealed class ActorDetailsState with _$ActorDetailsState {
  factory ActorDetailsState.loading() = ActorDetailsStateLoading;

  factory ActorDetailsState.loaded({
    required List<TvShow> actorSeries,
  }) = ActorDetailsStateLoaded;

  factory ActorDetailsState.error({
    required String message,
  }) = ActorDetailsStateError;
}
