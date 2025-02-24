import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;

class FeaturedRemedyCard extends StatelessWidget {
  final Remedy remedy;

  const FeaturedRemedyCard({
    required this.remedy,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          // Navigate to remedy detail
          Navigator.pushNamed(
            context,
            '/remedy-detail',
            arguments: remedy.remedyId,
          );
        },
        child: SizedBox(
          width: 160,
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
                      size: 32,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      remedy.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (remedy.scientificName != null)
                      Text(
                        remedy.scientificName!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: 8),
                    // Display primary effects or tags
                    if (remedy.primaryEffects != null)
                      Wrap(
                        spacing: 4,
                        children: (remedy.primaryEffects!.take(2))
                            .map((effect) => Chip(
                                  label: Text(
                                    effect.toString(),
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