import 'package:agents/domain/agent.dart';
import 'package:flutter/material.dart';

class DesafioDoDia extends StatelessWidget {
  final Agent enemy;
  final String attribute;

  const DesafioDoDia({
    super.key,
    required this.enemy,
    required this.attribute,
  });

  @override
  Widget build(BuildContext context) {
    final images = enemy.images;

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Desafio do dia',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 20),

            Text(
              'Inimigo',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 12),

            ClipOval(
              child: Image.network(
                images!.md!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              enemy.name ?? '-',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 20),

            Text(
              'Atributo testado',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 6),

            Text(
              attribute.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
