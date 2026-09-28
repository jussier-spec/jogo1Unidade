


import 'package:agents/data/database/entity/agent_database_entity.dart';
import 'package:agents/domain/agent.dart';

import '../../domain/exception/mapper_exception.dart';

class AgentDatabaseMapper{

  Agent toAgent(AgentDatabaseEntity entity){
    try{
      return Agent(
          id: entity.id,
          name: entity.name
      );
    }catch (e){
      throw MapperException<AgentDatabaseEntity, Agent>(e.toString());
    }
  }

  List<Agent> toAgents(List<AgentDatabaseEntity> entities){
    final List<Agent> agents = [];
    for (var agenteEntity in entities) {
      agents.add(toAgent(agenteEntity));
    }
    return agents;
  }

  AgentDatabaseEntity toAgentEntity(Agent agent){
    try{
      return AgentDatabaseEntity(
          id: null,
          name: agent.name!,
          slug: agent.slug!
      );
    }catch (e){
      throw MapperException<AgentDatabaseEntity, Agent>(e.toString());
    }
  }

  List<AgentDatabaseEntity> toAgentsEntities(List<Agent> agents){
    final List<AgentDatabaseEntity> agentEntities = [];
    for (var m in agents) {
      agentEntities.add(toAgentEntity(m));
    }
    return agentEntities;
  }
}