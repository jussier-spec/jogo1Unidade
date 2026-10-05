import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../entity/agent_database_entity.dart';

abstract class AgentBaseDao {
  static const databaseVersion = 2;
  static const _databaseName = 'agent_database.db';

  Database? _database;

  @protected
  Future<Database> getDb() async {
    _database ??= await _getDatabase();
    return _database!;
  }

  Future<Database> _getDatabase() async {
    return openDatabase(
      join(
        await getDatabasesPath(),
        _databaseName,
      ),
      onCreate: (db, version) async {
        final batch = db.batch();

        _createTablesV1(batch);

        await batch.commit();
      },
      version: databaseVersion,
    );
  }

  void _createTablesV1(Batch batch) {
    // Agents
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.agentTable} (
        ${AgentDatabaseContract.idColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.nameColumn} TEXT NOT NULL,
        ${AgentDatabaseContract.slugColumn} TEXT NOT NULL
      );
    ''');

    // Powerstats
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.powerstatsTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.intelligenceColumn} INTEGER NOT NULL,
        ${AgentDatabaseContract.strengthColumn} INTEGER NOT NULL,
        ${AgentDatabaseContract.speedColumn} INTEGER NOT NULL,
        ${AgentDatabaseContract.durabilityColumn} INTEGER NOT NULL,
        ${AgentDatabaseContract.powerColumn} INTEGER NOT NULL,
        ${AgentDatabaseContract.combatColumn} INTEGER NOT NULL,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Appearance
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.appearanceTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.genderColumn} TEXT,
        ${AgentDatabaseContract.raceColumn} TEXT,
        ${AgentDatabaseContract.heightColumn} TEXT,
        ${AgentDatabaseContract.weightColumn} TEXT,
        ${AgentDatabaseContract.eyeColorColumn} TEXT,
        ${AgentDatabaseContract.hairColorColumn} TEXT,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Biography
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.biographyTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.fullNameColumn} TEXT,
        ${AgentDatabaseContract.alterEgosColumn} TEXT,
        ${AgentDatabaseContract.placeOfBirthColumn} TEXT,
        ${AgentDatabaseContract.firstAppearanceColumn} TEXT,
        ${AgentDatabaseContract.publisherColumn} TEXT,
        ${AgentDatabaseContract.alignmentColumn} TEXT,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Aliases
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.aliasesTable} (
        ${AgentDatabaseContract.aliasIdColumn}
          INTEGER PRIMARY KEY AUTOINCREMENT,
        ${AgentDatabaseContract.agentIdColumn}
          INTEGER NOT NULL,
        ${AgentDatabaseContract.aliasColumn}
          TEXT NOT NULL,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Work
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.workTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.occupationColumn} TEXT,
        ${AgentDatabaseContract.baseColumn} TEXT,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Connections
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.connectionsTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.groupAffiliationColumn} TEXT,
        ${AgentDatabaseContract.relativesColumn} TEXT,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    // Images
    batch.execute('''
      CREATE TABLE ${AgentDatabaseContract.imagesTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        ${AgentDatabaseContract.xsColumn} TEXT,
        ${AgentDatabaseContract.smColumn} TEXT,
        ${AgentDatabaseContract.mdColumn} TEXT,
        ${AgentDatabaseContract.lgColumn} TEXT,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    ''');

    batch.execute(
      '''
      CREATE TABLE ${AgentDatabaseContract.esquadraoTable} (
        ${AgentDatabaseContract.agentIdColumn} INTEGER PRIMARY KEY,
        FOREIGN KEY (
          ${AgentDatabaseContract.agentIdColumn}
        )
        REFERENCES ${AgentDatabaseContract.agentTable} (
          ${AgentDatabaseContract.idColumn}
        )
      );
    '''
    );
  }
}
