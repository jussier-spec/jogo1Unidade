

import 'package:agents/domain/agent.dart';

abstract class AgentRepository {
  Future<List<Agent>> getAgents({ required int page, required int limit});
}