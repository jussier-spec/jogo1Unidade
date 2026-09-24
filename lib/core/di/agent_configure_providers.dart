import 'package:flutter_repository_example/data/database/dao/agent_dao.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AgentConfigureProviders {
  final List<SingleChildWidget> providers;

  AgentConfigureProviders({required this.providers});

  static Future<AgentConfigureProviders> createDependencyTree() async {
    final agent_dao = AgentDao();
    // final api_client = ApiClient(baseUrl: "http://10.0.2.2:3000");
    // final network_mapper = NetworkMapper();
    // final database_mapper = DatabaseMapper();

    // final movies_repository = MovieRepositoryImpl(
    //     apiClient: api_client,
    //     networkMapper: network_mapper,
    //     databaseMapper: database_mapper,
    //     agentDao: agent_dao
    // );

    return AgentConfigureProviders(providers: [
      Provider<AgentDao>.value(value: agent_dao),

      // Provider<ApiClient>.value(value: api_client),
      // Provider<NetworkMapper>.value(value: network_mapper),
      // Provider<DatabaseMapper>.value(value: database_mapper),
      // Provider<MovieRepositoryImpl>.value(value: movies_repository),
    ]);
  }
}


