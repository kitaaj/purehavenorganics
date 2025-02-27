import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';

class SymptomCard extends StatelessWidget {
  final SymptomSearchResult result;
  final VoidCallback onTap;

  const SymptomCard({required this.result, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(result.conditionName, style: theme.textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                'Matching Symptoms (${result.matchCount})',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children:
                    result.matchingSymptoms
                        .map(
                          (symptom) => Chip(
                            label: Text(symptom),
                            backgroundColor: theme.colorScheme.primaryContainer,
                            labelStyle: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                        )
                        .toList(),
              ),
              if (result.recommendedRemedies.isNotEmpty) ...[
                const SizedBox(height: 16),
                Text(
                  'Recommended Remedies:',
                  style: theme.textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: result.recommendedRemedies.length,
                  itemBuilder: (context, index) {
                    final entry = result.recommendedRemedies.entries.elementAt(
                      index,
                    );
                    return ListTile(
                      dense: true,
                      leading: const Icon(Icons.medication),
                      title: Text(entry.key),
                      trailing: Text(
                        'Effectiveness: ${entry.value}%',
                        style: theme.textTheme.bodySmall,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/remedy-detail',
                          arguments: entry.key,
                        );
                      },
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
