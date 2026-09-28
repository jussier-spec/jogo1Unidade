
import 'package:agents/data/database/dao/agent_base_dao.dart';
import 'package:agents/data/database/entity/agent_database_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../entity/movie_database_entity.dart';

class AgentDao extends AgentBaseDao {
  Future<List<AgentDatabaseEntity>> selectAll({
    int? limit,
    int? offset,
  }) async {
    final Database db = await getDb();
    final List<Map<String, dynamic>> maps = await db.query(
      AgentDatabaseContract.agentTable,
      limit: limit,
      offset: offset,
      orderBy: '${AgentDatabaseContract.idColumn} ASC',
    );
    return List.generate(maps.length, (i) {
      return AgentDatabaseEntity.fromJson(maps[i]);
    });
  }

  Future<void> insert(AgentDatabaseEntity entity) async {
    final Database db = await getDb();
    await db.insert(AgentDatabaseContract.agentTable, entity.toJson());
  }

  Future<void> insertAll(List<AgentDatabaseEntity> entities) async {
    final Database db = await getDb();
    await db.transaction((transaction) async {
      for (final entity in entities) {
        transaction.insert(AgentDatabaseContract.agentTable, entity.toJson());
      }
    });
  }

  Future<void> deleteAll() async {
    final Database db = await getDb();
    await db.delete(MovieDatabaseContract.movieTable);
  }
}
