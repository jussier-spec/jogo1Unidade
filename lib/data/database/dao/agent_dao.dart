
import 'package:agents/data/database/dao/agent_base_dao.dart';
import 'package:agents/data/database/entity/agent_database_entity.dart';
import 'package:agents/domain/agent.dart';
import 'package:sqflite/sqflite.dart';

class AgentDao extends AgentBaseDao {
  late final nameTableAgents = "agents";
  Future<List<Agent>> selectAll({
    int? limit,
    int? offset,
  }) async {
    final Database db = await getDb();
    final List<Map<String, dynamic>> maps = await db.query(
      nameTableAgents,
      limit: limit,
      offset: offset,
      orderBy: 'id ASC',
    );
    return List.generate(maps.length, (i) {
      return Agent.fromJson(maps[i]);
    });
  }

  Future<void> insert(Agent entity) async {
    final Database db = await getDb();
    await db.insert(nameTableAgents, entity.toJson());
  }

  Future<void> insertAll(List<Agent> entities) async {
    final Database db = await getDb();

    await db.transaction((txn) async {
      for (final agent in entities) {
        await _insertAgent(txn, agent);
      }
    });
  }

  // Future<void> deleteAll() async {
  //   final Database db = await getDb();
  //   await db.delete(MovieDatabaseContract.movieTable);
  // }

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
}
