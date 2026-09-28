import 'package:agents/data/repository/agent_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:agents/domain/agent.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class AgentesPage extends StatefulWidget {
  const AgentesPage({super.key});

  @override
  State<AgentesPage> createState() => _AgentesPageState();
}

class _AgentesPageState extends State<AgentesPage> {
  late final AgentRepositoryImpl agentRepo;
  late final _pagingController = PagingController<int, Agent>(
    getNextPageKey: (state) => state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => agentRepo.getAgents(page: pageKey, limit: 10),
  );

  @override
  void initState() {
    super.initState();
    agentRepo = Provider.of<AgentRepositoryImpl>(context, listen: false);
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PagingListener(
    controller: _pagingController,
    builder: (context, state, fetchNextPage) => PagedListView<int, Agent>(
      state: state,
      fetchNextPage: fetchNextPage,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => Text(item.name!),
      ),
    ),
  );
}
