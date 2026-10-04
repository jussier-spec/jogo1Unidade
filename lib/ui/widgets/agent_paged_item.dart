import 'package:agents/domain/agent.dart';
import 'package:agents/ui/page/details_agent_page.dart';
import 'package:flutter/material.dart';

class AgentPagedItem extends StatelessWidget {
  final Agent hero;
  final VoidCallback? onTap;

  const AgentPagedItem({
    super.key,
    required this.hero,
    this.onTap,
  });

  void _selectHero(Agent hero, BuildContext context) {
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
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: InkWell(
      onTap: () {
        _selectHero(hero, context);
      },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagem do herói
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: 100,
                  height: 140,
                  child: Image.network(
                    hero.images!.md!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) {
                      return Container(
                        color: Colors.grey.shade300,
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey,
                        ),
                      );
                    },
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;

                      return Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: 12),

              // Conteúdo
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nome
                    Text(
                      hero.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Powerstats
                    Text(
                      'Powerstats',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        _StatChip(
                          label: 'INT',
                          value: hero.powerstats!.intelligence!,
                        ),
                        _StatChip(
                          label: 'STR',
                          value: hero.powerstats!.strength!,
                        ),
                        _StatChip(
                          label: 'SPD',
                          value: hero.powerstats!.speed!,
                        ),
                        _StatChip(
                          label: 'DUR',
                          value: hero.powerstats!.durability!,
                        ),
                        _StatChip(
                          label: 'PWR',
                          value: hero.powerstats!.power!,
                        ),
                        _StatChip(
                          label: 'COM',
                          value: hero.powerstats!.combat!,
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Appearance
                    Text(
                      'Appearance',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    _AppearanceRow(
                      icon: Icons.person_outline,
                      text: '${hero.appearance!.gender} • ${hero.appearance!.race}',
                    ),

                    const SizedBox(height: 4),

                    _AppearanceRow(
                      icon: Icons.height,
                      text: hero.appearance!.height!.last,
                    ),

                    const SizedBox(height: 4),

                    _AppearanceRow(
                      icon: Icons.monitor_weight_outlined,
                      text: hero.appearance!.weight!.last,
                    ),

                    const SizedBox(height: 4),

                    _AppearanceRow(
                      icon: Icons.visibility_outlined,
                      text: 'Eyes: ${hero.appearance!.eyeColor}',
                    ),

                    const SizedBox(height: 4),

                    _AppearanceRow(
                      icon: Icons.face_outlined,
                      text: 'Hair: ${hero.appearance!.hairColor}',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final int value;

  const _StatChip({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$label $value',
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _AppearanceRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _AppearanceRow({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: Colors.grey.shade600,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
