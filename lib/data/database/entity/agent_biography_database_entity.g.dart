// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_biography_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentBiographyDatabaseEntity _$AgentBiographyDatabaseEntityFromJson(
  Map<String, dynamic> json,
) => AgentBiographyDatabaseEntity(
  agentId: (json['agent_id'] as num).toInt(),
  fullName: json['full_name'] as String?,
  alterEgos: json['alter_egos'] as String?,
  placeOfBirth: json['place_of_birth'] as String?,
  firstAppearance: json['first_appearance'] as String?,
  publisher: json['publisher'] as String?,
  alignment: json['alignment'] as String?,
);

Map<String, dynamic> _$AgentBiographyDatabaseEntityToJson(
  AgentBiographyDatabaseEntity instance,
) => <String, dynamic>{
  'agent_id': instance.agentId,
  'full_name': instance.fullName,
  'alter_egos': instance.alterEgos,
  'place_of_birth': instance.placeOfBirth,
  'first_appearance': instance.firstAppearance,
  'publisher': instance.publisher,
  'alignment': instance.alignment,
};
