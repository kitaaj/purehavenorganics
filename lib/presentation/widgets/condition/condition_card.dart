import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';

class ConditionCard extends StatelessWidget {
  final Condition condition;
  final VoidCallback? onTap;

  const ConditionCard({
    required this.condition,
    this.onTap,
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
              Text(
                condition.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (condition.description != null) ...[
                const SizedBox(height: 8),
                Text(
                  condition.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (condition.symptoms != null && condition.symptoms!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: condition.symptoms!
                      .take(3)
                      .map((symptom) => Chip(
                            label: Text(
                              symptom,
                              style: const TextStyle(fontSize: 12),
                            ),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ))
                      .toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}