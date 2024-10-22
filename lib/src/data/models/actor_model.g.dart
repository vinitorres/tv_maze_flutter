// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorImpl _$$ActorImplFromJson(Map<String, dynamic> json) => _$ActorImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      thumb: json['image.medium'] as String? ?? '',
      poster: json['image.original'] as String? ?? '',
      country: json['country.name'] as String? ?? '',
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$ActorImplToJson(_$ActorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image.medium': instance.thumb,
      'image.original': instance.poster,
      'country.name': instance.country,
      'birthday': instance.birthday?.toIso8601String(),
    };
