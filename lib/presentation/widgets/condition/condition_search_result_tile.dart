import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';

class ConditionSearchResultTile extends StatelessWidget {
  final ConditionSearchResult result;
  final VoidCallback onTap;

  const ConditionSearchResultTile({
    required this.result,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      result.conditionName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${(result.avgEffectiveness * 100).round()}%',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              if (result.conditionDescription != null) ...[
                const SizedBox(height: 8),
                Text(
                  result.conditionDescription!,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (result.symptoms.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: result.symptoms
                      .take(3)
                      .map((symptom) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withValues(alpha:0.5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              symptom,
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    Theme.of(context).colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ],
              const SizedBox(height: 8),
              Text(
                '${result.remedyCount} remedies available',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}