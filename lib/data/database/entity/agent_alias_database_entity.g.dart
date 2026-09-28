// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_alias_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentAliasDatabaseEntity _$AgentAliasDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentAliasDatabaseEntity(
  id: (json['id'] as num?)?.toInt(),
  agentId: (json['agent_id'] as num).toInt(),
  alias: json['alias'] as String,
);

Map<String, dynamic> _$AgentAliasDatabaseEntityToJson(
  AgentAliasDatabaseEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'agent_id': instance.agentId,
  'alias': instance.alias,
};
