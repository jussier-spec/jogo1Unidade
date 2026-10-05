import 'package:agents/domain/agent.dart';
import 'package:flutter/material.dart';

class BatalhaPage extends StatelessWidget {
  final Agent enemy;
  final Agent hero;
  final String attribute;

  const BatalhaPage({
    super.key,
    required this.enemy,
    required this.hero,
    required this.attribute,
  });

  int? _getAttribute(Agent character) {
    final powerstats =
        character.powerstats;

    switch (attribute.toLowerCase()) {
      case 'intelligence':
        return powerstats!.intelligence;

      case 'strength':
        return powerstats!.strength;

      case 'speed':
        return powerstats!.speed;

      case 'durability':
        return powerstats!.durability;

      case 'power':
        return powerstats!.power;

      case 'combat':
        return powerstats!.combat;

      default:
        return 0;
      }
  }

  void _showResult(BuildContext context) {
    final heroValue = _getAttribute(hero);
    final enemyValue = _getAttribute(enemy);

    String message;
    Color color;

    if (heroValue! > enemyValue!) {
      message = 'sucesso na rodada';
      color = Colors.green;
    } else if (heroValue < enemyValue) {
      message = 'falha na rodada';
      color = Colors.red;
    } else {
      message = 'empate tático';
      color = Colors.amber;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final heroImages =
        hero.images;

    final enemyImages =
        enemy.images;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Batalha'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              attribute.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                _buildCharacter(
                  context,
                  hero.name,
                  heroImages!.md!
                ),

                const Text(
                  'VS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                _buildCharacter(
                  context,
                  enemy.name,
                  enemyImages!.md!
                ),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _showResult(context);
                },
                child: const Text('Lutar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCharacter(
    BuildContext context,
    String? name,
    String image,
  ) {
    return SizedBox(
      width: 130,
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              image,
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            name ?? '-',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
