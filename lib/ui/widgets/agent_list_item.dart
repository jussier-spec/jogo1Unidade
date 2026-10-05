import 'package:agents/domain/agent.dart';
import 'package:flutter/material.dart';

class AgentListItem extends StatelessWidget {
  final Agent hero;
  final VoidCallback? onTap;

  const AgentListItem({
    super.key,
    required this.hero,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final images = hero.images;
    final powerstats = hero.powerstats;

    final name = hero.name ?? '-';
    final strength = powerstats!.strength ?? 0;

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              // Imagem
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  images!.sm!,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 80,
                      height: 80,
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.broken_image,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(width: 16),

              // Nome + atributo
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Strength: $strength',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
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
