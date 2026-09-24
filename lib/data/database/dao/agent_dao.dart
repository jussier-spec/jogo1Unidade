
import 'package:flutter_repository_example/data/database/dao/agent_base_dao.dart';
import 'package:flutter_repository_example/data/database/entity/agent_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../entity/movie_database_entity.dart';

class AgentDao extends AgentbaseDao {
  Future<List<AgentEntity>> selectAll({
    int? limit,
    int? offset,
  }) async {
    final Database db = await getDb();
    final List<Map<String, dynamic>> maps = await db.query(
      AgentDatabaseContract.movieTable,
      limit: limit,
      offset: offset,
      orderBy: '${AgentDatabaseContract.idColumn} ASC',
    );
    return List.generate(maps.length, (i) {
      return AgentEntity.fromJson(maps[i]);
    });
  }

  Future<void> insert(AgentEntity entity) async {
    final Database db = await getDb();
    await db.insert(AgentDatabaseContract.movieTable, entity.toJson());
  }

  Future<void> insertAll(List<AgentEntity> entities) async {
    final Database db = await getDb();
    await db.transaction((transaction) async {
      for (final entity in entities) {
        transaction.insert(AgentDatabaseContract.movieTable, entity.toJson());
      }
    });
  }

  Future<void> deleteAll() async {
    final Database db = await getDb();
    await db.delete(MovieDatabaseContract.movieTable);
  }
}
