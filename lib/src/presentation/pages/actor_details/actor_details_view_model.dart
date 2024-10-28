import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/domain.dart';
import 'actor_details_state.dart';

class ActorDetailsViewModel extends Cubit<ActorDetailsState> {
  ActorDetailsViewModel(this._getActorSeriesUsecase)
      : super(ActorDetailsState.loading());

  final IGetActorSeriesUsecase _getActorSeriesUsecase;

  loadActorSeries(int actorId) async {
    emit(ActorDetailsState.loading());
    final result = await _getActorSeriesUsecase.call(actorId);
    emit(
      result.fold(
        (error) {
          return ActorDetailsState.error(
            message: error.message,
          );
        },
        (success) {
          return ActorDetailsState.loaded(actorSeries: success);
        },
      ),
    );
  }
}
