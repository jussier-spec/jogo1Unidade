import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_images_database_entity.g.dart';

@JsonSerializable()
class AgentImagesDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.xsColumn)
  final String? xs;

  @JsonKey(name: AgentDatabaseContract.smColumn)
  final String? sm;

  @JsonKey(name: AgentDatabaseContract.mdColumn)
  final String? md;

  @JsonKey(name: AgentDatabaseContract.lgColumn)
  final String? lg;

  AgentImagesDatabaseEntity({
    required this.agentId,
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  factory AgentImagesDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentImagesDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentImagesDatabaseEntityToJson(this);
}
