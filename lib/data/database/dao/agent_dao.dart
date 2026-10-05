
import 'package:agents/data/database/dao/agent_base_dao.dart';
import 'package:agents/data/database/entity/agent_database_entity.dart';
import 'package:agents/domain/agent.dart';
import 'package:sqflite/sqflite.dart';

class AgentDao extends AgentBaseDao {
  Future<List<Agent>> selectAll({
    int? limit,
    int? offset,
  }) async {
   final Database db = await getDb();
   final List<Map<String, dynamic>> maps = await db.rawQuery(
    '''
    SELECT
      a.id AS agent_id,
      a.name AS agent_name,
      a.slug AS agent_slug,

      ps.intelligence AS powerstats_intelligence,
      ps.strength AS powerstats_strength,
      ps.speed AS powerstats_speed,
      ps.durability AS powerstats_durability,
      ps.power AS powerstats_power,
      ps.combat AS powerstats_combat,

      ap.gender AS appearance_gender,
      ap.race AS appearance_race,
      ap.height AS appearance_height,
      ap.weight AS appearance_weight,
      ap.eye_color AS appearance_eye_color,
      ap.hair_color AS appearance_hair_color,

      b.full_name AS biography_full_name,
      b.alter_egos AS biography_alter_egos,
      b.place_of_birth AS biography_place_of_birth,
      b.first_appearance AS biography_first_appearance,
      b.publisher AS biography_publisher,
      b.alignment AS biography_alignment,

      w.occupation AS work_occupation,
      w.base AS work_base,

      c.group_affiliation AS connections_group_affiliation,
      c.relatives AS connections_relatives,

      i.xs AS images_xs,
      i.sm AS images_sm,
      i.md AS images_md,
      i.lg AS images_lg

    FROM ${AgentDatabaseContract.agentTable} a

    LEFT JOIN ${AgentDatabaseContract.powerstatsTable} ps
      ON ps.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.appearanceTable} ap
      ON ap.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.biographyTable} b
      ON b.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.workTable} w
      ON w.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.connectionsTable} c
      ON c.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.imagesTable} i
      ON i.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    ORDER BY a.${AgentDatabaseContract.idColumn} ASC

    ${limit != null ? 'LIMIT $limit' : ''}
    ${offset != null ? 'OFFSET $offset' : ''}
    ''',
  );

  final List<Agent> agents = [];

  for (final map in maps) {
    final int agentId = map['agent_id'] as int;

    // Busca aliases desse agente.
    final List<Map<String, dynamic>> aliases = await db.query(
      AgentDatabaseContract.aliasesTable,
      where:
          '${AgentDatabaseContract.agentIdColumn} = ?',
      whereArgs: [agentId],
      orderBy:
          '${AgentDatabaseContract.aliasIdColumn} ASC',
    );

      agents.add(
        Agent.fromDatabase(
          agent: {
            'id': map['agent_id'],
            'name': map['agent_name'],
            'slug': map['agent_slug'],
          },
          powerstats: {
            'intelligence': map['powerstats_intelligence'],
            'strength': map['powerstats_strength'],
            'speed': map['powerstats_speed'],
            'durability': map['powerstats_durability'],
            'power': map['powerstats_power'],
            'combat': map['powerstats_combat'],
          },
          appearance: {
            'gender': map['appearance_gender'],
            'race': map['appearance_race'],
            'height': map['appearance_height'],
            'weight': map['appearance_weight'],
            'eye_color': map['appearance_eye_color'],
            'hair_color': map['appearance_hair_color'],
          },
          biography: {
            'full_name': map['biography_full_name'],
            'alter_egos': map['biography_alter_egos'],
            'place_of_birth': map['biography_place_of_birth'],
            'first_appearance': map['biography_first_appearance'],
            'publisher': map['biography_publisher'],
            'alignment': map['biography_alignment'],
          },
          aliases: aliases,
          work: {
            'occupation': map['work_occupation'],
            'base': map['work_base'],
          },
          connections: {
            'group_affiliation':
                map['connections_group_affiliation'],
            'relatives': map['connections_relatives'],
          },
          images: {
            'xs': map['images_xs'],
            'sm': map['images_sm'],
            'md': map['images_md'],
            'lg': map['images_lg'],
          },
        ),
      );
    }

    return agents;
  }

  Future<void> insert(Agent entity) async {
    final Database db = await getDb();
    await db.insert(AgentDatabaseContract.agentTable, entity.toJson());
  }

  Future<void> insertAll(List<Agent> entities) async {
    final Database db = await getDb();
    await db.transaction((txn) async {
      for (final agent in entities) {
        await _insertAgent(txn, agent);
      }
    });
  }

  Future<void> _insertAgent(Transaction txn, Agent agent) async {
  // Agent
    await txn.insert(
      AgentDatabaseContract.agentTable,
      {
        AgentDatabaseContract.idColumn: agent.id,
        AgentDatabaseContract.nameColumn: agent.name,
        AgentDatabaseContract.slugColumn: agent.slug,
      },
    );

    // PowerStats
    if (agent.powerstats != null) {
      await txn.insert(
        AgentDatabaseContract.powerstatsTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.intelligenceColumn:
              agent.powerstats!.intelligence,
          AgentDatabaseContract.strengthColumn:
              agent.powerstats!.strength,
          AgentDatabaseContract.speedColumn:
              agent.powerstats!.speed,
          AgentDatabaseContract.durabilityColumn:
              agent.powerstats!.durability,
          AgentDatabaseContract.powerColumn:
              agent.powerstats!.power,
          AgentDatabaseContract.combatColumn:
              agent.powerstats!.combat,
        },
      );
    }

    // Appearance
    if (agent.appearance != null) {
      await txn.insert(
        AgentDatabaseContract.appearanceTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.genderColumn:
              agent.appearance!.gender,
          AgentDatabaseContract.raceColumn:
              agent.appearance!.race,
          AgentDatabaseContract.heightColumn:
              agent.appearance!.height?.join(', '),
          AgentDatabaseContract.weightColumn:
              agent.appearance!.weight?.join(', '),
          AgentDatabaseContract.eyeColorColumn:
              agent.appearance!.eyeColor,
          AgentDatabaseContract.hairColorColumn:
              agent.appearance!.hairColor,
        },
      );
    }

    // Biography
    if (agent.biography != null) {
      await txn.insert(
        AgentDatabaseContract.biographyTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.fullNameColumn:
              agent.biography!.fullName,
          AgentDatabaseContract.alterEgosColumn:
              agent.biography!.alterEgos,
          AgentDatabaseContract.placeOfBirthColumn:
              agent.biography!.placeOfBirth,
          AgentDatabaseContract.firstAppearanceColumn:
              agent.biography!.firstAppearance,
          AgentDatabaseContract.publisherColumn:
              agent.biography!.publisher,
          AgentDatabaseContract.alignmentColumn:
              agent.biography!.alignment,
        },
      );
    }

    // Aliases
    if (agent.biography?.aliases != null) {
      for (final alias in agent.biography!.aliases!) {
        await txn.insert(
          AgentDatabaseContract.aliasesTable,
          {
            AgentDatabaseContract.agentIdColumn: agent.id,
            AgentDatabaseContract.aliasColumn: alias,
          },
        );
      }
    }

    // Work
    if (agent.work != null) {
      await txn.insert(
        AgentDatabaseContract.workTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.occupationColumn:
              agent.work!.occupation,
          AgentDatabaseContract.baseColumn:
              agent.work!.base,
        },
      );
    }

    // Connections
    if (agent.connections != null) {
      await txn.insert(
        AgentDatabaseContract.connectionsTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.groupAffiliationColumn:
              agent.connections!.groupAffiliation,
          AgentDatabaseContract.relativesColumn:
              agent.connections!.relatives,
        },
      );
    }

    // Images
    if (agent.images != null) {
      await txn.insert(
        AgentDatabaseContract.imagesTable,
        {
          AgentDatabaseContract.agentIdColumn: agent.id,
          AgentDatabaseContract.xsColumn:
              agent.images!.xs,
          AgentDatabaseContract.smColumn:
              agent.images!.sm,
          AgentDatabaseContract.mdColumn:
              agent.images!.md,
          AgentDatabaseContract.lgColumn:
              agent.images!.lg,
        },
      );
    }
  }

  Future<void> insertAgentInEsquadrao(int idAgentContratado) async {
    final Database db = await getDb();
    await db.insert(AgentDatabaseContract.esquadraoTable, {'agent_id': idAgentContratado});
  }

  Future<List<Agent>> selectAgentsEsquadrao() async {
   final Database db = await getDb();
   final List<Map<String, dynamic>> maps = await db.rawQuery(
    '''
    SELECT
      a.id AS agent_id,
      a.name AS agent_name,
      a.slug AS agent_slug,

      ps.intelligence AS powerstats_intelligence,
      ps.strength AS powerstats_strength,
      ps.speed AS powerstats_speed,
      ps.durability AS powerstats_durability,
      ps.power AS powerstats_power,
      ps.combat AS powerstats_combat,

      ap.gender AS appearance_gender,
      ap.race AS appearance_race,
      ap.height AS appearance_height,
      ap.weight AS appearance_weight,
      ap.eye_color AS appearance_eye_color,
      ap.hair_color AS appearance_hair_color,

      b.full_name AS biography_full_name,
      b.alter_egos AS biography_alter_egos,
      b.place_of_birth AS biography_place_of_birth,
      b.first_appearance AS biography_first_appearance,
      b.publisher AS biography_publisher,
      b.alignment AS biography_alignment,

      w.occupation AS work_occupation,
      w.base AS work_base,

      c.group_affiliation AS connections_group_affiliation,
      c.relatives AS connections_relatives,

      i.xs AS images_xs,
      i.sm AS images_sm,
      i.md AS images_md,
      i.lg AS images_lg

    FROM ${AgentDatabaseContract.esquadraoTable} es
    JOIN ${AgentDatabaseContract.agentTable} a ON a.${AgentDatabaseContract.idColumn} = es.${AgentDatabaseContract.agentIdColumn}

    LEFT JOIN ${AgentDatabaseContract.powerstatsTable} ps
      ON ps.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.appearanceTable} ap
      ON ap.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.biographyTable} b
      ON b.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.workTable} w
      ON w.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.connectionsTable} c
      ON c.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    LEFT JOIN ${AgentDatabaseContract.imagesTable} i
      ON i.${AgentDatabaseContract.agentIdColumn} = a.${AgentDatabaseContract.idColumn}

    ORDER BY a.${AgentDatabaseContract.idColumn} ASC
    ''',
  );

  final List<Agent> agents = [];

  for (final map in maps) {
    final int agentId = map['agent_id'] as int;

    // Busca aliases desse agente.
    final List<Map<String, dynamic>> aliases = await db.query(
      AgentDatabaseContract.aliasesTable,
      where:
          '${AgentDatabaseContract.agentIdColumn} = ?',
      whereArgs: [agentId],
      orderBy:
          '${AgentDatabaseContract.aliasIdColumn} ASC',
    );

      agents.add(
        Agent.fromDatabase(
          agent: {
            'id': map['agent_id'],
            'name': map['agent_name'],
            'slug': map['agent_slug'],
          },
          powerstats: {
            'intelligence': map['powerstats_intelligence'],
            'strength': map['powerstats_strength'],
            'speed': map['powerstats_speed'],
            'durability': map['powerstats_durability'],
            'power': map['powerstats_power'],
            'combat': map['powerstats_combat'],
          },
          appearance: {
            'gender': map['appearance_gender'],
            'race': map['appearance_race'],
            'height': map['appearance_height'],
            'weight': map['appearance_weight'],
            'eye_color': map['appearance_eye_color'],
            'hair_color': map['appearance_hair_color'],
          },
          biography: {
            'full_name': map['biography_full_name'],
            'alter_egos': map['biography_alter_egos'],
            'place_of_birth': map['biography_place_of_birth'],
            'first_appearance': map['biography_first_appearance'],
            'publisher': map['biography_publisher'],
            'alignment': map['biography_alignment'],
          },
          aliases: aliases,
          work: {
            'occupation': map['work_occupation'],
            'base': map['work_base'],
          },
          connections: {
            'group_affiliation':
                map['connections_group_affiliation'],
            'relatives': map['connections_relatives'],
          },
          images: {
            'xs': map['images_xs'],
            'sm': map['images_sm'],
            'md': map['images_md'],
            'lg': map['images_lg'],
          },
        ),
      );
    }

    return agents;
  }

  Future<void> deleteAgentEsquadrao(int idAgentContratado) async {
    final Database db = await getDb();
    await db.delete(AgentDatabaseContract.esquadraoTable, where: 'agent_id = $idAgentContratado');
  }
}
