// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_connections_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentConnectionsDatabaseEntity _$AgentConnectionsDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentConnectionsDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  groupAffiliation: json['group_affiliation'] as String?,
  relatives: json['relatives'] as String?,
);

Map<String, dynamic> _$AgentConnectionsDatabaseEntityToJson(
  AgentConnectionsDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'group_affiliation': instance.groupAffiliation,
  'relatives': instance.relatives,
};
