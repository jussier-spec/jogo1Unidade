import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_powerstats_database_entity.g.dart';

@JsonSerializable()
class AgentPowerstatsDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.intelligenceColumn)
  final int intelligence;

  @JsonKey(name: AgentDatabaseContract.strengthColumn)
  final int strength;

  @JsonKey(name: AgentDatabaseContract.speedColumn)
  final int speed;

  @JsonKey(name: AgentDatabaseContract.durabilityColumn)
  final int durability;

  @JsonKey(name: AgentDatabaseContract.powerColumn)
  final int power;

  @JsonKey(name: AgentDatabaseContract.combatColumn)
  final int combat;

  AgentPowerstatsDatabaseEntity({
    required this.agentId,
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory AgentPowerstatsDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentPowerstatsDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentPowerstatsDatabaseEntityToJson(this);
}
