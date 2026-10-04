import 'package:agents/domain/agent.dart';
import 'package:agents/ui/page/details_agent_page.dart';
import 'package:agents/ui/widgets/agent_list_item.dart';
import 'package:flutter/material.dart';

class MeuEsquadraoPage extends StatefulWidget {
  const MeuEsquadraoPage({super.key});

  @override
  State<MeuEsquadraoPage> createState() => _MeuEsquadraoPageState();
}

class _MeuEsquadraoPageState extends State<MeuEsquadraoPage> {
  List<Agent> heroes = [];
  
  void _selectHero(Agent hero) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsAgent(
          hero: hero
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu esqudrão')),
      body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (context, index) {
          final hero = heroes[index];
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
