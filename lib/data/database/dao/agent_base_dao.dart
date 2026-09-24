import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../entity/agent_entity.dart';

abstract class AgentbaseDao {
  static const databaseVersion = 1;
  static const _databaseName = 'agent_database.db';

  Database? _database;

  @protected
  Future<Database> getDb() async {
    _database ??= await _getDatabase();
    return _database!;
  }

  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, version) async {
        final batch = db.batch();
        _createTablesV1(batch);
        await batch.commit();
      },
      version: databaseVersion,
    );
  }

  void _createTablesV1(Batch batch) {
    batch.execute(
      '''
      CREATE TABLE ${AgentDatabaseContract.movieTable}(
      ${AgentDatabaseContract.idColumn} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${AgentDatabaseContract.nameColumn} TEXT NOT NULL,
      ${AgentDatabaseContract.slugColumn} TEXT NOT NULL,
      );
      ''',
    );
  }
}