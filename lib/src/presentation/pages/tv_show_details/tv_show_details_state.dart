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

class TvShowDetailsState {
  final TvShowDetailsStatus status;

  final List<Episode>? episodes;
  final List<Person>? cast;
  final String? castErrorMessage;
  final String? episodesErrorMessage;

  TvShowDetailsState({
    required this.status,
    this.episodes,
    this.cast,
    this.castErrorMessage,
    this.episodesErrorMessage,
  });

  TvShowDetailsState copyWith({
    TvShowDetailsStatus? status,
    List<Episode>? episodes,
    List<Person>? cast,
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
