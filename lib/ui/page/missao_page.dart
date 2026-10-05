import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/data/network/client/api_agents.dart';
import 'package:agents/domain/agent.dart';
import 'package:agents/ui/page/batalha_page.dart';
import 'package:agents/ui/widgets/agent_list_item.dart';
import 'package:agents/ui/widgets/agent_list_item_circulo.dart';
import 'package:agents/ui/widgets/desafio_do_dia.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:provider/provider.dart';

class MissaoPage extends StatefulWidget {
  const MissaoPage({super.key});

  @override
  State<MissaoPage> createState() => _MissaoPagePageState();
}

class _MissaoPagePageState extends State<MissaoPage> {
  Agent? inimigo;
  bool loading = true;
  late String attribute;
  List<Agent> heroes = [];

  Future<void> _loadInimigo() async {
    try {
      final apiClient = context.read<ApiAgents>();

      final agents = await apiClient.getAgent(page: 1, limit: 10);

      if (!mounted) return;

      setState(() {
        final random = Random();
        inimigo = agents.isNotEmpty ? agents.elementAt(random.nextInt(10)) : null;
        loading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Não foi possível carregar os agentes no momento.'),
          backgroundColor: Colors.orangeAccent,
          duration: const Duration(seconds: 2),
        ),
      );

      if (!mounted) return;

      setState(() {
        loading = false;
      });
    }
  }

  Future<void> _loadEsquadrao() async {
    try {
      final agentDao = context.read<AgentDao>();

      heroes = await agentDao.selectAgentsEsquadrao();

      if (!mounted) return;

      setState(() {
        loading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Não foi possível carregar os agentes no momento.'),
          backgroundColor: Colors.orangeAccent,
          duration: const Duration(seconds: 2),
        ),
      );

      if (!mounted) return;

      setState(() {
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadInimigo();
      _loadEsquadrao();
    });
    final attributes = [
      'intelligence',
      'strength',
      'speed',
      'durability',
      'power',
      'combat',
    ];

    attributes.shuffle();
    attribute = attributes.first;
  }
  void _selectHero(Agent hero) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BatalhaPage(
          enemy: inimigo!,
          hero: hero,
          attribute: attribute,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio'),
      ),

      body: loading ?  
              const Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              )
            : inimigo != null ?
              CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: DesafioDoDia(
                            enemy: inimigo!,
                            attribute: attribute,
                          ),
                        ),

                        SliverToBoxAdapter(
                          child: AgentListItemCirculo(
                            heroes: heroes,
                            onHeroSelected: _selectHero,
                          ),
                        ),
                      ],
                    ) : const Center(
                child: Text('Não foi possível carregar o inimigo.'),
              )
    );
  }
}
