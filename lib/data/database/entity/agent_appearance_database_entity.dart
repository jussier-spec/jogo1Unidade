import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_appearance_database_entity.g.dart';

@JsonSerializable()
class AgentAppearanceDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.genderColumn)
  final String? gender;

  @JsonKey(name: AgentDatabaseContract.raceColumn)
  final String? race;

  @JsonKey(name: AgentDatabaseContract.heightColumn)
  final String? height;

  @JsonKey(name: AgentDatabaseContract.weightColumn)
  final String? weight;

  @JsonKey(name: AgentDatabaseContract.eyeColorColumn)
  final String? eyeColor;

  @JsonKey(name: AgentDatabaseContract.hairColorColumn)
  final String? hairColor;

  AgentAppearanceDatabaseEntity({
    required this.agentId,
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  factory AgentAppearanceDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentAppearanceDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentAppearanceDatabaseEntityToJson(this);
}
