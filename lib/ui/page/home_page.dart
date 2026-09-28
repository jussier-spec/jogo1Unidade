import 'package:agents/ui/page/agentes_page.dart';
import 'package:agents/ui/page/contrato_diario.dart';
import 'package:agents/ui/page/meu_esquadrao_page.dart';
import 'package:agents/ui/page/missao_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});
    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // late final MovieRepositoryImpl moviesRepo;
  // late final PagingController<int, Movie> _pagingController = PagingController<int, Movie>(
  //   getNextPageKey: (state) => state.lastPageIsEmpty ? null : state.nextIntPageKey,
  //   fetchPage: (pageKey) => moviesRepo.getMovies(page: pageKey, limit: 10)
  // );
    final Map<String, dynamic> hero = {
    "id": 1,
    "name": "A-Bomb",
    "slug": "1-a-bomb",
    "powerstats": {
      "intelligence": 38,
      "strength": 100,
      "speed": 17,
      "durability": 80,
      "power": 24,
      "combat": 64
    },
    "appearance": {
      "gender": "Male",
      "race": "Human",
      "height": [
        "6'8",
        "203 cm"
      ],
      "weight": [
        "980 lb",
        "441 kg"
      ],
      "eyeColor": "Yellow",
      "hairColor": "No Hair"
    },
    "biography": {
      "fullName": "Richard Milhouse Jones",
      "alterEgos": "No alter egos found.",
      "aliases": [
        "Rick Jones"
      ],
      "placeOfBirth": "Scarsdale, Arizona",
      "firstAppearance":
          "Hulk Vol 2 #2 (April, 2008) (as A-Bomb)",
      "publisher": "Marvel Comics",
      "alignment": "good"
    },
    "work": {
      "occupation":
          "Musician, adventurer, author; formerly talk show host",
      "base": "-"
    },
    "connections": {
      "groupAffiliation":
          "Hulk Family; Excelsior (sponsor), Avengers (honorary member); formerly partner of the Hulk, Captain America and Captain Marvel; Teen Brigade; ally of Rom",
      "relatives":
          "Marlo Chandler-Jones (wife); Polly (aunt); Mrs. Chandler (mother-in-law); Keith Chandler, Ray Chandler, three unidentified others (brothers-in-law); unidentified father (deceased); Jackie Shorr (alleged mother; unconfirmed)"
    },
    "images": {
      "xs":
          "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/1-a-bomb.jpg",
      "sm":
          "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/sm/1-a-bomb.jpg",
      "md":
          "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/md/1-a-bomb.jpg",
      "lg":
          "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/1-a-bomb.jpg"
    }
  }; 

  void _navigateTo(
    BuildContext context,
    Widget page,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuCard(
              context,
              icon: Icons.people,
              title: 'Agentes',
              onTap: () {
                _navigateTo(
                  context,
                  const AgentesPage(),
                );
              },
            ),

            _buildMenuCard(
              context,
              icon: Icons.description,
              title: 'Contrato diário',
              onTap: () {
                _navigateTo(
                  context,
                  ContratoDiarioPage(hero: hero,),
                );
              },
            ),

            _buildMenuCard(
              context,
              icon: Icons.groups,
              title: 'Meu esquadrão',
              onTap: () {
                _navigateTo(
                  context,
                  const MeuEsquadraoPage(),
                );
              },
            ),

            _buildMenuCard(
              context,
              icon: Icons.flag,
              title: 'Missões',
              onTap: () {
                _navigateTo(
                  context,
                  const MissaoPage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 56,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 16),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

