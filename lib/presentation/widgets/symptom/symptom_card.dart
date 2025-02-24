import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';

class SymptomResultCard extends StatelessWidget {
  final SymptomSearchResult result;

  const SymptomResultCard({
    required this.result,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ExpansionTile(
        title: Text(result.conditionName),
        subtitle: Text('${result.matchCount} matching symptom(s)'),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Matching Symptoms:',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Wrap(
                  spacing: 8,
                  children: result.matchingSymptoms
                      .map((symptom) => Chip(label: Text(symptom)))
                      .toList(),
                ),
                const SizedBox(height: 16),
                Text(
                  'Recommended Remedies:',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                // Display recommended remedies here
              ],
            ),
          ),
        ],
      ),
    );
  }
}