import 'package:flutter/material.dart';

class AgentListItemCirculo extends StatelessWidget {
  final List<Map<String, dynamic>> heroes;
  final Function(Map<String, dynamic>) onHeroSelected;

  const AgentListItemCirculo({
    super.key,
    required this.heroes,
    required this.onHeroSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'Escolha seu herói',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            itemCount: heroes.length,
            itemBuilder: (context, index) {
              final hero = heroes[index];

              final images =
                  hero['images'] as Map<String, dynamic>;

              return GestureDetector(
                onTap: () {
                  onHeroSelected(hero);
                },
                child: Container(
                  width: 90,
                  margin: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          images['sm'],
                          width: 75,
                          height: 75,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        hero['name'] ?? '-',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
