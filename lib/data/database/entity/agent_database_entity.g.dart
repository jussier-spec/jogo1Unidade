// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentDatabaseEntity _$AgentDatabaseEntityFromJson(Map<String, dynamic> json) =>
    AgentDatabaseEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$AgentDatabaseEntityToJson(
  AgentDatabaseEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
};
