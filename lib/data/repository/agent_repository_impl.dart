

import 'package:agents/data/database/agent_database_mapper.dart';
import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/data/network/client/api_agents.dart';
import 'package:agents/data/network/network_agents_mapper.dart';
import 'package:agents/data/repository/agent_repository.dart';
import 'package:agents/domain/agent.dart';

class AgentRepositoryImpl implements AgentRepository {
  final ApiAgents apiClient;
  //final NetworkAgentsMapper networkMapper;
  final AgentDao agentDao;
  final AgentDatabaseMapper databaseMapper;

  AgentRepositoryImpl(
      {required this.agentDao,
      required this.databaseMapper,
      required this.apiClient,
     // required this.networkMapper
      });

  @override
  Future<List<Agent>> getAgents({ required int page, required int limit}) async {
    // //Tentar carregar a partir do banco de dados
    // final dbEntities = await agentDao.selectAll(limit: 10, offset: (page * limit) - limit);
    // //Se o dado já existe, carregar esse dado.
    // if (dbEntities.isNotEmpty) {
    //   return databaseMapper.toAgents(dbEntities);
    // }  
    //Caso contrário, buscar pela API remota
    return await apiClient.getAgent(page: page, limit: limit);
    //final agents = networkMapper.toAgents(networkEntity);
    //E salvar os dados no banco local para cash
    //agentDao.insertAll(databaseMapper.toAgentsEntities(agents));

    //return agents;
  }
}
