// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_appearance_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentAppearanceDatabaseEntity _$AgentAppearanceDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentAppearanceDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  gender: json['gender'] as String?,
  race: json['race'] as String?,
  height: json['height'] as String?,
  weight: json['weight'] as String?,
  eyeColor: json['eye_color'] as String?,
  hairColor: json['hair_color'] as String?,
);

Map<String, dynamic> _$AgentAppearanceDatabaseEntityToJson(
  AgentAppearanceDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'gender': instance.gender,
  'race': instance.race,
  'height': instance.height,
  'weight': instance.weight,
  'eye_color': instance.eyeColor,
  'hair_color': instance.hairColor,
};
