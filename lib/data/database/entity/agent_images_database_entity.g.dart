// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_images_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentImagesDatabaseEntity _$AgentImagesDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentImagesDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  xs: json['xs'] as String?,
  sm: json['sm'] as String?,
  md: json['md'] as String?,
  lg: json['lg'] as String?,
);

Map<String, dynamic> _$AgentImagesDatabaseEntityToJson(
  AgentImagesDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'xs': instance.xs,
  'sm': instance.sm,
  'md': instance.md,
  'lg': instance.lg,
};
