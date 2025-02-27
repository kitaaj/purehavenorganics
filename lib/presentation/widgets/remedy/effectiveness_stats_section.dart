import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/effectiveness_stats.dart';

class EffectivenessStatsSection extends StatelessWidget {
  final EffectivenessStats stats;

  const EffectivenessStatsSection({
    required this.stats,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(stats.averageRating != null)
        ListTile(
          title: const Text('Average Rating'),
          subtitle: LinearProgressIndicator(
            value: stats.averageRating as double,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        if (stats.totalConditions.toString().isNotEmpty)
          ListTile(
            leading: const Icon(Icons.science),
            title: const Text('Conditions Treated'),
            subtitle: Text(stats.totalConditions.toString()),
          ),
        if (stats.evidenceBasedCount.toString().isNotEmpty)
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Evidence-based Count'),
            subtitle: Text(stats.evidenceBasedCount.toString()),
          ),
      ],
    );
  }
}