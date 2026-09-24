// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentEntity _$AgentEntityFromJson(Map<String, dynamic> json) =>
    AgentEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      // extract: json['extract'] as String?,
      // imageUrl: json['img_url'] as String?,
    );

Map<String, dynamic> _$AgentEntityToJson(
  AgentEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  // 'year': instance.year,
  // 'extract': instance.extract,
};
