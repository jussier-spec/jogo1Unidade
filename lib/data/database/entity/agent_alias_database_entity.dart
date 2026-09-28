import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_alias_database_entity.g.dart';

@JsonSerializable()
class AgentAliasDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.aliasIdColumn)
  final int? id;

  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.aliasColumn)
  final String alias;

  AgentAliasDatabaseEntity({
    required this.id,
    required this.agentId,
    required this.alias,
  });

  factory AgentAliasDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentAliasDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentAliasDatabaseEntityToJson(this);
}
