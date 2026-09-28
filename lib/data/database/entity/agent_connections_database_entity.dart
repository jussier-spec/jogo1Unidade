import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_connections_database_entity.g.dart';

@JsonSerializable()
class AgentConnectionsDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.groupAffiliationColumn)
  final String? groupAffiliation;

  @JsonKey(name: AgentDatabaseContract.relativesColumn)
  final String? relatives;

  AgentConnectionsDatabaseEntity({
    required this.agentId,
    this.groupAffiliation,
    this.relatives,
  });

  factory AgentConnectionsDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentConnectionsDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentConnectionsDatabaseEntityToJson(this);
}
