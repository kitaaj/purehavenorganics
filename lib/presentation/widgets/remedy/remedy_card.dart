import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class RemedyCard extends StatelessWidget {
  final Remedy remedy;
  final VoidCallback? onTap;

  const RemedyCard({required this.remedy, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    remedy.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  if (remedy.scientificName != null)
                    Text(
                      remedy.scientificName!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 4,
                    runSpacing: 4.0,
                    children: [
                      for (final use in remedy.primaryEffects ?? [])
                        Chip(
                          label: Text(
                            use.toString(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall!.copyWith(fontSize: 8.0),
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                    ],
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
