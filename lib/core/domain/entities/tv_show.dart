import 'dart:convert';

import 'package:tv_shows_app/core/domain/entities/schedule.dart';

import 'episode.dart';

class TvShow {
  final int id;
  final String name;
  final String posterUrl;
  final DateTime? airs;
  final DateTime? premiered;
  final DateTime? ended;
  final List<String> genres;
  final Schedule schedule;
  final String summary;
  final List<Episode> episodes;

  TvShow({
    required this.id,
    required this.name,
    required this.posterUrl,
    this.airs,
    this.premiered,
    this.ended,
    required this.genres,
    required this.summary,
    required this.episodes,
    required this.schedule,
  });

  factory TvShow.fromJson(Map<String, dynamic> json) {
    return TvShow(
        id: json['id'],
        name: json['name'],
        posterUrl: json['image']?['original'] ?? '',
        airs:
            json['airstamp'] != null ? DateTime.parse(json['airstamp']) : null,
        premiered: json['premiered'] != null
            ? DateTime.parse(json['premiered'])
            : null,
        ended: json['ended'] != null ? DateTime.parse(json['ended']) : null,
        genres: json['genres'] != null
            ? (json['genres'] as List<dynamic>)
                .map<String>((genres) => genres.toString())
                .toList()
            : [],
        summary: json['summary'] ?? '',
        episodes: json['episodes'] != null
            ? (json['episodes'] as List<dynamic>)
                .map<Episode>((episodeJson) => Episode.fromJson(episodeJson))
                .toList()
            : [],
        schedule: Schedule.fromJson(json['schedule']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': {'original': posterUrl},
      'airstamp': airs?.toIso8601String(),
      'premiered': premiered?.toIso8601String(),
      'ended': ended?.toIso8601String(),
      'genres': genres,
      'summary': summary,
      'episodes': episodes,
      'schedule': schedule.toJson(),
    };
  }

  @override
  String toString() {
    return "TvShow: $name";
  }

  //create enconde and decode for list of tv shows

  static List<TvShow> decode(String tvShowsJson) {
    final tvShows = <TvShow>[];
    final tvShowsMap = jsonDecode(tvShowsJson) as List<dynamic>;
    for (final tvShowMap in tvShowsMap) {
      tvShows.add(TvShow.fromJson(tvShowMap));
    }
    return tvShows;
  }

  static String encode(List<TvShow> tvShows) {
    final tvShowsMap = tvShows.map((tvShow) => tvShow.toJson()).toList();
    return jsonEncode(tvShowsMap);
  }
}
