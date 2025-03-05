import 'package:flutter/material.dart';

class EffectivenessStatsSection extends StatelessWidget {
  final Map<String, double> stats;

  const EffectivenessStatsSection({required this.stats, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: stats.entries.map((entry) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(child: Text(entry.key)),
                Text('${(entry.value * 100).toStringAsFixed(0)}%'),
              ],
            ),
            const SizedBox(height: 4),
            LinearProgressIndicator(
              value: entry.value,
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 8),
          ],
        );
      }).toList(),
    );
  }
}