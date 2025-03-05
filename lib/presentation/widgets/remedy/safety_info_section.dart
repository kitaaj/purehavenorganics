import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/utils/string_capitalization.dart';
import 'package:purehavenorganics/core/utils/string_to_list.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class SafetyInformationSection extends StatelessWidget {
  final Remedy remedy;

  const SafetyInformationSection({required this.remedy, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (remedy.precautions != null && remedy.precautions!.isNotEmpty)
          _buildSafetySection(
            context,
            Icons.warning_amber_rounded,
            'Precautions',
            stringToList(
              remedy.precautions,
            )!.join('\n• '), // Convert List to String
          ),
        if (remedy.sideEffects != null && remedy.sideEffects!.isNotEmpty)
          _buildSafetySection(
            context,
            Icons.error_outline,
            'Side Effects',
            remedy.sideEffects!.join('\n• '), // Convert List to String
          ),
        if (remedy.contraindications != null &&
            remedy.contraindications!.isNotEmpty)
          _buildSafetySection(
            context,
            Icons.block,
            'Contraindications',
            stringToList(
              remedy.contraindications,
            )!.join('\n• '), // Convert List to String
          ),
        if (remedy.drugInteractions != null &&
            remedy.drugInteractions!.isNotEmpty)
          _buildSafetySection(
            context,
            Icons.medication_liquid,
            'Drug Interactions',
            stringToList(
              remedy.drugInteractions,
            )!.join('\n• '), // Convert List to String
          ),
      ],
    );
  }

  Widget _buildSafetySection(
    BuildContext context,
    IconData icon,
    String title,
    String content, // Now expects a String
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.error, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '• $content'.capitalize(capitalizeEachWord: true),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
