import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_work_database_entity.g.dart';

@JsonSerializable()
class AgentWorkDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.occupationColumn)
  final String? occupation;

  @JsonKey(name: AgentDatabaseContract.baseColumn)
  final String? base;

  AgentWorkDatabaseEntity({
    required this.agentId,
    this.occupation,
    this.base,
  });

  factory AgentWorkDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentWorkDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentWorkDatabaseEntityToJson(this);
}
