import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart' show SymptomSearchResult;

class SymptomSearchResultCard extends StatelessWidget {
  final SymptomSearchResult symptomResult;

  const SymptomSearchResultCard({
    required this.symptomResult,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.coronavirus),
        title: Text(symptomResult.conditionName),
        subtitle: Text('Matching symptoms: ${symptomResult.matchCount}'),
        onTap: () {
          // Navigate to condition detail
        },
      ),
    );
  }
}