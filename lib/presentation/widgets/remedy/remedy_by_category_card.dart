import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';

class RemedyByCategoryCard extends StatelessWidget {
  final RemediesByCategory remedy;
  final VoidCallback? onTap;

  const RemedyByCategoryCard({
    super.key,
    required this.remedy,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Use primaryUses if available, otherwise fallback to commonNames for chips
    final List<String> chipLabels = remedy.primaryUses ??
        remedy.commonNames ??
        [];

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for remedy image
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey.shade200,
                child: Center(
                  child: Icon(
                    Icons.healing,
                    size: 48,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display the remedy name as title
                  Text(
                    remedy.remedyName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  // Optionally display the scientific name if provided
                  if (remedy.scientificName != null)
                    Text(
                      remedy.scientificName!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  const SizedBox(height: 8),
                  // Display chips for each use or common name
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: chipLabels
                        .map(
                          (label) => Chip(
                            label: Text(
                              label,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 10),
                            ),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
