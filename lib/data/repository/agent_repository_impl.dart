

import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/data/network/client/api_agents.dart';
import 'package:agents/data/repository/agent_repository.dart';
import 'package:agents/domain/agent.dart';

class AgentRepositoryImpl implements AgentRepository {
  final ApiAgents apiClient;
  final AgentDao agentDao;
  // final AgentDatabaseMapper databaseMapper;

  AgentRepositoryImpl(
      {required this.agentDao,
      // required this.databaseMapper,
      required this.apiClient
      });

  @override
  Future<List<Agent>> getAgents({ required int page, required int limit}) async {
    final dbEntities = await agentDao.selectAll(limit: 10, offset: (page * limit) - limit);
    if (dbEntities.isNotEmpty) {
      return dbEntities;
    }  
    final agentsApi = await apiClient.getAgent(page: page, limit: limit);
    agentDao.insertAll(agentsApi);

    return agentsApi;
  }
}
