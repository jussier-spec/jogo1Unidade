import 'package:agents/domain/agent.dart';
import 'package:agents/ui/widgets/agent_card.dart';
import 'package:flutter/material.dart';

class DetailsAgent extends StatelessWidget {
  final Agent hero;
  const DetailsAgent({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(hero.name ?? 'Detalhes')),
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

                    _buildInfo('Gender', hero.appearance!.gender),
                    _buildInfo('Race', hero.appearance!.race),
                    _buildInfo('Height', _listToString(hero.appearance!.height)),
                    _buildInfo('Weight', _listToString(hero.appearance!.weight)),
                    _buildInfo('Eye Color', hero.appearance!.eyeColor),
                    _buildInfo('Hair Color', hero.appearance!.hairColor),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Biography'),

                    const SizedBox(height: 12),

                    _buildInfo('Full Name', hero.biography!.fullName),
                    _buildInfo('Alter Egos', hero.biography!.alterEgos),
                    _buildInfo('Aliases', _listToString(hero.biography!.aliases)),
                    _buildInfo('Place of Birth', hero.biography!.placeOfBirth),
                    _buildInfo(
                      'First Appearance',
                      hero.biography!.firstAppearance,
                    ),
                    _buildInfo('Publisher', hero.biography!.publisher),
                    _buildInfo('Alignment', hero.biography!.alignment),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Work'),

                    const SizedBox(height: 12),

                    _buildInfo('Occupation', hero.work!.occupation),
                    _buildInfo('Base', hero.work!.base),

                    const SizedBox(height: 24),

                    _buildSectionTitle(context, 'Connections'),

                    const SizedBox(height: 12),

                    _buildInfo(
                      'Group Affiliation',
                      hero.connections!.groupAffiliation,
                    ),

                    _buildInfo('Relatives', hero.connections!.relatives),
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
  
  String _listToString(dynamic value) {
    if (value is List) {
      return value.join(' / ');
    }

    return value?.toString() ?? '-';
  }
}
