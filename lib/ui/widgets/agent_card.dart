import 'package:agents/data/repository/agent_repository_impl.dart';
import 'package:agents/domain/agent.dart';
import 'package:flutter/material.dart';

class AgentCard extends StatelessWidget {
  final Agent hero;
  const AgentCard({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    final images = hero.images;
    final powerstats = hero.powerstats;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network(
            images!.lg.toString(),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Icon(Icons.broken_image, size: 60));
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hero.name ?? '-',
                style: Theme.of(context).textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              _buildSectionTitle(context, 'Powerstats'),

              const SizedBox(height: 20),

              _buildPowerStat(
                context,
                'Intelligence',
                powerstats!.intelligence,
              ),

              _buildPowerStat(context, 'Strength', powerstats.strength),

              _buildPowerStat(context, 'Speed', powerstats.speed),

              _buildPowerStat(context, 'Durability', powerstats.durability),

              _buildPowerStat(context, 'Power', powerstats.power),

              _buildPowerStat(context, 'Combat', powerstats.combat),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildPowerStat(BuildContext context, String name, dynamic value) {
    final int stat = int.tryParse(value?.toString() ?? '0') ?? 0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Text(
                '$stat',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(value: stat / 100, minHeight: 8),
        ],
      ),
    );
  }
}
