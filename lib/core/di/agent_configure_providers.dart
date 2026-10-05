import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/data/network/client/api_agents.dart';
import 'package:agents/data/repository/agent_repository_impl.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AgentConfigureProviders {
  final List<SingleChildWidget> providers;
  AgentConfigureProviders({required this.providers});
  static Future<AgentConfigureProviders> createDependencyTree() async {
    final agent_dao = AgentDao();
    final api_client = ApiAgents(baseUrl: "http://localhost:3000");

    final agents_repository = AgentRepositoryImpl(
        apiClient: api_client,
        agentDao: agent_dao
    );

    return AgentConfigureProviders(providers: [
      Provider<AgentDao>.value(value: agent_dao),
      Provider<ApiAgents>.value(value: api_client),
      Provider<AgentRepositoryImpl>.value(value: agents_repository),
    ]);
  }
}


