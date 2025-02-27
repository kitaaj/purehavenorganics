import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';

class RelatedConditionsList extends StatelessWidget {
  final List<RelatedCondition> conditions;

  const RelatedConditionsList({required this.conditions, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Related Conditions',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: conditions.length,
          itemBuilder: (context, index) {
            final condition = conditions[index];
            return ListTile(
              title: Text(condition.relatedCondition),
              subtitle:
                  condition.relationshipDescription!.isNotEmpty
                      ? Text(condition.relationshipDescription!)
                      : Text(condition.relationshipType),
              trailing: Text('${condition.relationshipStrength}%'),
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.conditionDetail,
                  arguments: condition.relatedCondition,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
