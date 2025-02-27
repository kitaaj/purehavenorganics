import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class SavedRemedyCard extends StatelessWidget {
  final Remedy remedy;
  final VoidCallback? onTap;

  const SavedRemedyCard({
    required this.remedy,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Center(
                    child: Icon(
                      Icons.healing,
                      size: 32,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      remedy.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (remedy.scientificName != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        remedy.scientificName!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 4,
                      children: remedy.primaryEffects!
                          .take(2)
                          .map((use) => Chip(
                                label: Text(
                                  use,
                                  style: const TextStyle(fontSize: 10),
                                ),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}