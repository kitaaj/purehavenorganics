import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/usage_instructions.dart';

class UsageInstructionsSection extends StatelessWidget {
  final UsageInstructions instructions;

  const UsageInstructionsSection({required this.instructions, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (instructions.dosage.isNotEmpty) ...[
          Text('Dosage:', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(instructions.dosage),
          const SizedBox(height: 16),
        ],
        if (instructions.frequency.isNotEmpty) ...[
          Text('Frequency:', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(instructions.frequency),
          const SizedBox(height: 16),
        ],

        if (instructions.timing.isNotEmpty) ...[
          Text('Timing:', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(instructions.timing),
          const SizedBox(height: 16),
        ],
        if (instructions.duration.isNotEmpty) ...[
          Text('Duration:', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(instructions.duration),
          const SizedBox(height: 16),
        ],
        if (instructions.instructions.isNotEmpty) ...[
          Text(
            'Additional Instructions:',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          Text(instructions.instructions),
          const SizedBox(height: 16),
        ],
        if (instructions.precautions.isNotEmpty) ...[
          Text('Precautions:', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text(instructions.precautions),
            contentPadding: EdgeInsets.zero,
          ),
        ],
        if (instructions.contraindications != null &&
            instructions.contraindications!.isNotEmpty) ...[
          Text(
            'Contraindications:',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          ListTile(
            leading: const Icon(Icons.do_not_disturb),
            title: Text(instructions.contraindications!),
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ],
    );
  }
}
