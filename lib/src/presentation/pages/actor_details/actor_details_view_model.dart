import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/tv_show.dart';
import '../../../domain/usecases/get_actor_series_usecase.dart';

part 'actor_details_state.dart';

class ActorDetailsViewModel extends Cubit<ActorDetailsState> {
  ActorDetailsViewModel(this._getActorSeriesUsecase)
      : super(ActorDetailsState(status: ActorDetailsStatus.initial));

  final IGetActorSeriesUsecase _getActorSeriesUsecase;

  loadActorSeries(int actorId) async {
    emit(state.copyWith(status: ActorDetailsStatus.loading));

    final result = await _getActorSeriesUsecase.call(actorId);

    emit(
      result.fold(
        (error) {
          return state.copyWith(status: ActorDetailsStatus.error);
        },
        (success) {
          return state.copyWith(
            status: ActorDetailsStatus.loaded,
            actorSeries: success,
          );
        },
      ),
    );
  }
}
