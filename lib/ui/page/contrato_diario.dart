import 'package:agents/data/network/client/api_agents.dart';
import 'package:agents/domain/agent.dart';
import 'package:agents/ui/widgets/agent_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';




class ContratoDiarioPage extends StatefulWidget {
  const ContratoDiarioPage({
    super.key,
  });

  @override
  State<ContratoDiarioPage> createState() => _ContratoDiarioPageState();
}

class _ContratoDiarioPageState extends State<ContratoDiarioPage> {
  Agent? agent;
  bool loading = true;

  final int agentId = 1;

  @override
  void initState() {
    super.initState();

    // Espera o widget estar inserido na árvore
    // para acessar o Provider.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAgent();
    });
  }

  Future<void> _loadAgent() async {
    try {
      final apiClient = context.read<ApiAgents>();

      final agents = await apiClient.getAgent(page: 1, limit: 10);

      if (!mounted) return;

      setState(() {
        final random = Random();
        agent = agents.isNotEmpty ? agents.elementAt(random.nextInt(10)) : null;
        loading = false;
      });
    } catch (e) {
      print('Erro ao buscar agente: $e');

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
                  print('Clicou!');
                },
                style: raisedButtonStyle,
                child: const Text('Recrutar'),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
