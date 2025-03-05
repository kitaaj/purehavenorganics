import 'package:flutter/material.dart';

class ConditionsTreatedSection extends StatelessWidget {
  final List<String> conditions;

  const ConditionsTreatedSection({required this.conditions, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: conditions.map((condition) {
        return InputChip(
          label: Text(condition),
          avatar: Icon(
            Icons.check_circle_outline,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            // Add navigation to condition details
          },
        );
      }).toList(),
    );
  }
}