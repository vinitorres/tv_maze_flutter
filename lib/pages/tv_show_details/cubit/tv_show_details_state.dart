// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tv_show_details_cubit.dart';

enum TvShowDetailsStatus {
  initial,
  loadingEpisodes,
  loadedEpisodes,
  errorEpisodes,
  loadingCast,
  loadedCast,
  errorCast
}

class TvShowDetailsState extends Equatable {
  final TvShowDetailsStatus status;

  List<Episode>? episodes;
  List<Actor>? cast;
  String? castErrorMessage;
  String? episodesErrorMessage;

  TvShowDetailsState({
    required this.status,
    this.episodes,
    this.cast,
    this.castErrorMessage,
    this.episodesErrorMessage,
  });

  @override
  List<Object?> get props => [
        this.status,
        this.episodes,
        this.cast,
        this.castErrorMessage,
        this.episodesErrorMessage
      ];

  TvShowDetailsState copyWith({
    TvShowDetailsStatus? status,
    List<Episode>? episodes,
    List<Actor>? cast,
    String? castErrorMessage,
    String? episodesErrorMessage,
  }) {
    return TvShowDetailsState(
      status: status ?? this.status,
      episodes: episodes ?? this.episodes,
      cast: cast ?? this.cast,
      castErrorMessage: castErrorMessage ?? this.castErrorMessage,
      episodesErrorMessage: episodesErrorMessage ?? this.episodesErrorMessage,
    );
  }
}
