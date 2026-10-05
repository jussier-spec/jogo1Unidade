import 'package:agents/data/database/dao/agent_dao.dart';
import 'package:agents/domain/agent.dart';
import 'package:agents/ui/widgets/agent_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RemoverContratoDiario extends StatefulWidget {
  final Agent hero;
  const RemoverContratoDiario({
    super.key,
    required this.hero
  });

  @override
  State<RemoverContratoDiario> createState() => _RemoverContratoDiarioState();
}

class _RemoverContratoDiarioState extends State<RemoverContratoDiario> {
  Agent? agent;
  bool loading = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAgent();
    });
  }

  Future<void> _loadAgent() async {
    try {
      final agentDao = context.read<AgentDao>();
      final esquadrao = await agentDao.selectAgentsEsquadrao();
      for (var agentEsquadrao in esquadrao) {
          if(agentEsquadrao.id == widget.hero.id) {
            agent = agentEsquadrao;
          }
      }

      if (!mounted) return;

      setState(() {
        loading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Houve um problema ao carregar o agente: $e'),
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

  Future<void> _deleteAgentEsquadrao(int id) async {
    try {
      final agentDao = context.read<AgentDao>();
      await agentDao.deleteAgentEsquadrao(id);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Contratacão removida com sucesso'),
          backgroundColor: Colors.lime,
          duration: const Duration(seconds: 2),
        ),
      );

      if (!mounted) return;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Não foi possível remover a contratacão do agente no momento.'),
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
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black87,
      backgroundColor: Colors.grey[300],
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrato Diário'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (loading)
              const Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              )
            else if (agent != null)
              AgentCard(
                hero: agent!,
              )
            else
              const Padding(
                padding: EdgeInsets.all(24),
                child: Text('Agente não encontrado'),
              ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _deleteAgentEsquadrao(agent!.id);
                },
                style: raisedButtonStyle,
                child: const Text('Remover'),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
