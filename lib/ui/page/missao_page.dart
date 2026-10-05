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
  List<Agent> heroes = [
    Agent(
  id: 1,
  name: 'Spider-Man',
  slug: '1-spider-man',
  powerstats: const PowerStats(
    intelligence: 90,
    strength: 55,
    speed: 67,
    durability: 75,
    power: 74,
    combat: 85,
  ),
  appearance: const Appearance(
    gender: 'Male',
    race: 'Human',
    height: ['5\'10"', '178 cm'],
    weight: ['165 lb', '74 kg'],
    eyeColor: 'Hazel',
    hairColor: 'Brown',
  ),
  biography: const Biography(
    fullName: 'Peter Parker',
    alterEgos: 'No alter egos found.',
    aliases: [
      'Spidey',
      'Web-Slinger',
      'Wall-Crawler',
      'Friendly Neighborhood Spider-Man',
    ],
    placeOfBirth: 'New York, New York',
    firstAppearance: 'Amazing Fantasy #15',
    publisher: 'Marvel Comics',
    alignment: 'good',
  ),
  work: const Work(
    occupation: 'Photographer, Teacher, Scientist',
    base: 'New York City',
  ),
  connections: const Connections(
    groupAffiliation:
        'Avengers, Future Foundation, Daily Bugle',
    relatives:
        'May Parker (aunt), Richard Parker (father), Mary Jane Watson (wife)',
  ),
  images: const Images(
    xs: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
    sm: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
    md: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
    lg: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
  ),
)
  ];
  late String attribute;

  Future<void> _loadAgent() async {
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
      print('Erro ao buscar agente: $e');

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
      _loadAgent();
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
