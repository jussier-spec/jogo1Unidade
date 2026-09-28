// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_powerstats_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentPowerstatsDatabaseEntity _$AgentPowerstatsDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentPowerstatsDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  intelligence: (json['intelligence'] as num).toInt(),
  strength: (json['strength'] as num).toInt(),
  speed: (json['speed'] as num).toInt(),
  durability: (json['durability'] as num).toInt(),
  power: (json['power'] as num).toInt(),
  combat: (json['combat'] as num).toInt(),
);

Map<String, dynamic> _$AgentPowerstatsDatabaseEntityToJson(
  AgentPowerstatsDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'intelligence': instance.intelligence,
  'strength': instance.strength,
  'speed': instance.speed,
  'durability': instance.durability,
  'power': instance.power,
  'combat': instance.combat,
};
