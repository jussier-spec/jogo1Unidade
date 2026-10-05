import 'package:json_annotation/json_annotation.dart';

part 'agent_database_entity.g.dart';

@JsonSerializable()
class AgentDatabaseEntity {
  @JsonKey(name: AgentDatabaseContract.idColumn)
  final String? id;

  @JsonKey(name: AgentDatabaseContract.nameColumn)
  final String name;

  @JsonKey(name: AgentDatabaseContract.slugColumn)
  final String slug;

  AgentDatabaseEntity({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory AgentDatabaseEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgentDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AgentDatabaseEntityToJson(this);
}

class AgentDatabaseContract {
  // Agent
  static const agentTable = 'agents';

  static const idColumn = 'id';
  static const nameColumn = 'name';
  static const slugColumn = 'slug';

  // Common
  static const agentIdColumn = 'agent_id';

  // Powerstats
  static const powerstatsTable = 'agent_powerstats';

  static const intelligenceColumn = 'intelligence';
  static const strengthColumn = 'strength';
  static const speedColumn = 'speed';
  static const durabilityColumn = 'durability';
  static const powerColumn = 'power';
  static const combatColumn = 'combat';

  // Appearance
  static const appearanceTable = 'agent_appearance';

  static const genderColumn = 'gender';
  static const raceColumn = 'race';
  static const heightColumn = 'height';
  static const weightColumn = 'weight';
  static const eyeColorColumn = 'eye_color';
  static const hairColorColumn = 'hair_color';

  // Biography
  static const biographyTable = 'agent_biography';

  static const fullNameColumn = 'full_name';
  static const alterEgosColumn = 'alter_egos';
  static const placeOfBirthColumn = 'place_of_birth';
  static const firstAppearanceColumn = 'first_appearance';
  static const publisherColumn = 'publisher';
  static const alignmentColumn = 'alignment';

  // Aliases
  static const aliasesTable = 'agent_aliases';

  static const aliasIdColumn = 'id';
  static const aliasColumn = 'alias';

  // Work
  static const workTable = 'agent_work';

  static const occupationColumn = 'occupation';
  static const baseColumn = 'base';

  // Connections
  static const connectionsTable = 'agent_connections';

  static const groupAffiliationColumn = 'group_affiliation';
  static const relativesColumn = 'relatives';

  // Images
  static const imagesTable = 'agent_images';

  static const xsColumn = 'xs';
  static const smColumn = 'sm';
  static const mdColumn = 'md';
  static const lgColumn = 'lg';


  // Meu Esquadrão
  static const esquadraoTable = 'agent_esquadrao';

}
