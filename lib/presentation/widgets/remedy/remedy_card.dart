import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class RemedyCard extends StatelessWidget {
  final Remedy remedy;

  const RemedyCard({required this.remedy, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
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
              spacing: 8.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  remedy.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (remedy.scientificName != null)
                  Text(
                    remedy.scientificName!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                Wrap(
                  spacing: 4,
                  runSpacing: 4.0,
                  children: [
                    for (final use in remedy.primaryEffects ?? [])
                      Chip(
                        avatar: Icon(
                          Icons.healing,
                          size: 12,
                          color: Colors.grey.shade400,
                        ),
                        label: Text(
                          use.toString(),
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(fontSize: 11.0),
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
