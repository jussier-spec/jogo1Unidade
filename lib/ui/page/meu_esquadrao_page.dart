import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/domain/agent.dart';
import 'package:agents/ui/page/remover_contrato_diario.dart';
import 'package:agents/ui/widgets/agent_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MeuEsquadraoPage extends StatefulWidget {
  const MeuEsquadraoPage({super.key});

  @override
  State<MeuEsquadraoPage> createState() => _MeuEsquadraoPageState();
}

class _MeuEsquadraoPageState extends State<MeuEsquadraoPage> {
  List<Agent> esquadrao = [];

  Agent? agent;
  bool loading = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadEsquadrao();
    });
  }

  Future<void> _loadEsquadrao() async {
    try {
      final agentDao = context.read<AgentDao>();
      esquadrao = await agentDao.selectAgentsEsquadrao();
      if (!mounted) return;
      setState(() {
        loading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Houve um problema ao carregar o esquadrão: $e'),
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
  
  void _selectHero(Agent hero) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RemoverContratoDiario(
          hero: hero
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu esqudrão')),
      body: esquadrao.isEmpty
        ? const Center(
            child: Text(
              'Não tem nenhum agente no momento.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
        // Se tiver dados, renderiza a lista normalmente
        : ListView.builder(
            itemCount: esquadrao.length,
            itemBuilder: (context, index) {
              final hero = esquadrao[index];
              return AgentListItem(
                hero: hero,
                onTap: () {
                  _selectHero(hero);
                },
              );
            },
          ),
    );
  }
}
