import 'package:agents/ui/widgets/agent_card.dart';
import 'package:flutter/material.dart';

class DetailsAgent extends StatelessWidget {
  final Map<String, dynamic> hero;
  const DetailsAgent({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    final images = hero['images'] as Map<String, dynamic>;
    final powerstats = hero['powerstats'] as Map<String, dynamic>;
    final appearance = hero['appearance'] as Map<String, dynamic>;
    final biography = hero['biography'] as Map<String, dynamic>;
    final work = hero['work'] as Map<String, dynamic>;
    final connections = hero['connections'] as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(hero['name'] ?? 'Detalhes')),
      body: SingleChildScrollView(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 4,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AgentCard(hero: hero),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Appearance'),

                    const SizedBox(height: 12),

                    _buildInfo('Gender', appearance['gender']),
                    _buildInfo('Race', appearance['race']),
                    _buildInfo('Height', _listToString(appearance['height'])),
                    _buildInfo('Weight', _listToString(appearance['weight'])),
                    _buildInfo('Eye Color', appearance['eyeColor']),
                    _buildInfo('Hair Color', appearance['hairColor']),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Biography'),

                    const SizedBox(height: 12),

                    _buildInfo('Full Name', biography['fullName']),
                    _buildInfo('Alter Egos', biography['alterEgos']),
                    _buildInfo('Aliases', _listToString(biography['aliases'])),
                    _buildInfo('Place of Birth', biography['placeOfBirth']),
                    _buildInfo(
                      'First Appearance',
                      biography['firstAppearance'],
                    ),
                    _buildInfo('Publisher', biography['publisher']),
                    _buildInfo('Alignment', biography['alignment']),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Work'),

                    const SizedBox(height: 12),

                    _buildInfo('Occupation', work['occupation']),
                    _buildInfo('Base', work['base']),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Connections'),

                    const SizedBox(height: 12),

                    _buildInfo(
                      'Group Affiliation',
                      connections['groupAffiliation'],
                    ),

                    _buildInfo('Relatives', connections['relatives']),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfo(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value?.toString() ?? '-')),
        ],
      ),
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

  String _listToString(dynamic value) {
    if (value is List) {
      return value.join(' / ');
    }

    return value?.toString() ?? '-';
  }
}
