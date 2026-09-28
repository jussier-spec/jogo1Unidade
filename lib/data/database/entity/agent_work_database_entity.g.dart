// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_work_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentWorkDatabaseEntity _$AgentWorkDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentWorkDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  occupation: json['occupation'] as String?,
  base: json['base'] as String?,
);

Map<String, dynamic> _$AgentWorkDatabaseEntityToJson(
  AgentWorkDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'occupation': instance.occupation,
  'base': instance.base,
};
