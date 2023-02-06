import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/entities/tv_show.dart';

part 'actor_details_state.dart';

class ActorDetailsCubit extends Cubit<ActorDetailsState> {
  ActorDetailsCubit(this._tvShowsRemoteDataSource)
      : super(ActorDetailsState(status: ActorDetailsStatus.initial));

  final TvShowsRemoteDataSource _tvShowsRemoteDataSource;

  late int actorId;

  setActorId(int id) {
    actorId = id;
    loadActorSeries();
  }

  loadActorSeries() async {
    emit(state.copyWith(status: ActorDetailsStatus.loading));

    try {
      final actorSeries =
          await _tvShowsRemoteDataSource.getActorSeries(actorId);
      emit(state.copyWith(
          status: ActorDetailsStatus.loaded, actorSeries: actorSeries));
    } catch (e) {
      emit(state.copyWith(status: ActorDetailsStatus.error));
    }
  }
}
