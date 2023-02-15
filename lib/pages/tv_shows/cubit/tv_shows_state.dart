part of 'tv_shows_cubit.dart';

enum TvShowsStatus { initial, loading, loadingMore, loaded, empty, error }

class TvShowsState extends Equatable {
  final TvShowsStatus status;

  final List<TvShow>? tvShowList;

  TvShowsState({
    required this.status,
    this.tvShowList,
  });

  @override
  List<Object?> get props => [this.status, this.tvShowList];

  TvShowsState copyWith({
    TvShowsStatus? status,
    List<TvShow>? tvShowList,
  }) {
    return TvShowsState(
      status: status ?? this.status,
      tvShowList: tvShowList ?? this.tvShowList,
    );
  }
}
