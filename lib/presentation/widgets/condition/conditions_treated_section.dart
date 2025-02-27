import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/get_effectiveness_color.dart';
import 'package:purehavenorganics/core/utils/get_effectiveness_label.dart';
import 'package:purehavenorganics/domain/entities/condition_treated.dart';

class ConditionsTreatedSection extends StatelessWidget {
  final List<ConditionTreated> conditions;

  const ConditionsTreatedSection({required this.conditions, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: conditions.length,
      itemBuilder: (context, index) {
        final condition = conditions.elementAt(index);
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: ExpansionTile(
            title: Text(
              condition.condition,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                if (condition.effectiveness != null) ...[
                  LinearProgressIndicator(
                    value: condition.effectiveness! / 5,
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      getEffectivenessColor(context, condition.effectiveness!),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Effectiveness: ${getEffectivenessLabel(condition.effectiveness!)}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ] else
                  Text(
                    'Effectiveness: Not rated',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.conditionDetail,
                  arguments: condition.condition,
                );
              },
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (condition.traditionalUse == true)
                      ListTile(
                        leading: const Icon(Icons.history),
                        title: const Text('Traditional Use'),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        subtitle: const Text(
                          'Supported by traditional medicine',
                        ),
                      ),

                    if (condition.scientificEvidence != null)
                      ListTile(
                        leading: const Icon(Icons.science),
                        title: const Text('Scientific Evidence'),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        subtitle: Text(condition.scientificEvidence!),
                      ),

                    if (condition.notes != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Additional Notes:',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        condition.notes!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
