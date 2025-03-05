import 'package:flutter/material.dart';

class UsageInstructionsSection extends StatelessWidget {
  final String instructions;

  const UsageInstructionsSection({required this.instructions, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        instructions,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}