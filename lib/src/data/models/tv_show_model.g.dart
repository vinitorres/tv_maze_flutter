// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvShowModelImpl _$$TvShowModelImplFromJson(Map<String, dynamic> json) =>
    _$TvShowModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      posterUrl: json['image.original'] as String? ?? '',
      airs: json['airstamp'] == null
          ? null
          : DateTime.parse(json['airstamp'] as String),
      premiered: json['premiered'] == null
          ? null
          : DateTime.parse(json['premiered'] as String),
      ended: json['ended'] == null
          ? null
          : DateTime.parse(json['ended'] as String),
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      summary: json['summary'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule:
          ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TvShowModelImplToJson(_$TvShowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image.original': instance.posterUrl,
      'airstamp': instance.airs?.toIso8601String(),
      'premiered': instance.premiered?.toIso8601String(),
      'ended': instance.ended?.toIso8601String(),
      'genres': instance.genres,
      'summary': instance.summary,
      'episodes': instance.episodes,
      'schedule': instance.schedule,
    };
