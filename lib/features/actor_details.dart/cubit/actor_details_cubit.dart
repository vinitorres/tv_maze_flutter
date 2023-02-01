import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/core/data/datasources/remote/tv_shows_remote_data_source.dart';
import 'package:tv_shows_app/core/domain/entities/tv_show.dart';

part 'actor_details_state.dart';

class ActorDetailsCubit extends Cubit<ActorDetailsState> {
  ActorDetailsCubit(this._tvShowsRemoteDataSource)
      : super(ActorDetailsInitial());

  final TvShowsRemoteDataSource _tvShowsRemoteDataSource;

  late int actorId;

  setActorId(int id) {
    actorId = id;
    loadActorSeries();
  }

  loadActorSeries() async {
    emit(ActorDetailsLoading());

    try {
      final actorSeries = await _tvShowsRemoteDataSource.getActorSeries(actorId);
      emit(ActorDetailsLoaded(actorSeries));
    } catch (e) {
      emit(ActorDetailsError());
    }
  }
}
