import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';

class ConditionSearchResultCard extends StatelessWidget {
  final ConditionSearchResult condition;
  final VoidCallback onTap;

  const ConditionSearchResultCard({
    super.key,
    required this.condition,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.healing),
        title: Text(condition.conditionName),
        subtitle: Text(condition.conditionDescription ?? ''),
        onTap: onTap,
      ),
    );
  }
}
