// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeModelImpl _$$EpisodeModelImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      season: (json['season'] as num).toInt(),
      thumb: json['image.medium'] as String? ?? '',
      poster: json['image.original'] as String? ?? '',
      airs: json['airstamp'] == null
          ? null
          : DateTime.parse(json['airstamp'] as String),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$EpisodeModelImplToJson(_$EpisodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'season': instance.season,
      'image.medium': instance.thumb,
      'image.original': instance.poster,
      'airstamp': instance.airs?.toIso8601String(),
      'summary': instance.summary,
    };
