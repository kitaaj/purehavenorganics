import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/search.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';
import 'package:purehavenorganics/presentation/widgets/condition/condition_card.dart';
import 'package:purehavenorganics/presentation/widgets/symptom/symptom_card.dart';

class SearchResultsList extends StatelessWidget {
  final SearchResults results;

  const SearchResultsList({required this.results, super.key});

  @override
  Widget build(BuildContext context) {
     if (results.remedies.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: results.remedies.length,
        itemBuilder: (context, index) {
          final remedy = results.remedies[index];
          return RemedyCard(remedy: remedy);
        },
      );
    }
    if (results.symptomResults.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: results.symptomResults.length,
        itemBuilder: (context, index) {
          final result = results.symptomResults[index];
          return SymptomResultCard(result: result);
        },
      );
    }
    if (results.conditions.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: results.conditions.length,
        itemBuilder: (context, index) {
          final condition = results.conditions[index];
          return ConditionCard(condition: condition);
        },
      );
    }

    // return const Center(child: Text('No results found'));
    return const SizedBox();
  }
}
