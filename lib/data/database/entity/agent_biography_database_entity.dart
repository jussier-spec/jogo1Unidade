import 'package:json_annotation/json_annotation.dart';

import 'agent_database_entity.dart';

part 'agent_biography_database_entity.g.dart';

@JsonSerializable()
class AgentBiographyDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.agentIdColumn)
  final int agentId;

  @JsonKey(name: AgentDatabaseContract.fullNameColumn)
  final String? fullName;

  @JsonKey(name: AgentDatabaseContract.alterEgosColumn)
  final String? alterEgos;

  @JsonKey(name: AgentDatabaseContract.placeOfBirthColumn)
  final String? placeOfBirth;

  @JsonKey(name: AgentDatabaseContract.firstAppearanceColumn)
  final String? firstAppearance;

  @JsonKey(name: AgentDatabaseContract.publisherColumn)
  final String? publisher;

  @JsonKey(name: AgentDatabaseContract.alignmentColumn)
  final String? alignment;

  AgentBiographyDatabaseEntity({
    required this.agentId,
    this.fullName,
    this.alterEgos,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory AgentBiographyDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentBiographyDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentBiographyDatabaseEntityToJson(this);
}
