import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:transparent_image/transparent_image.dart';

class ConditionRemedyCard extends StatelessWidget {
  final RemediesForCondition remedy;
  final VoidCallback onTap;

  const ConditionRemedyCard({
    required this.remedy,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.bottomStart,
          children: [
            remedy.imgUrl != null
                ? CachedNetworkImage(
                  imageUrl: remedy.imgUrl!,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 500),
                  fadeInCurve: Curves.easeIn,
                  placeholder:
                      (context, url) =>
                          Image.memory(kTransparentImage, fit: BoxFit.cover),
                  errorWidget:
                      (context, url, error) => Text('Failed to load image'),
                )
                : Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    ),
                  ),
                ),

            // Content Overlay
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      remedy.remedyName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                    if (remedy.scientificName != null) ...[
                      Text(
                        remedy.scientificName!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                        ),
                        overflow: TextOverflow.clip,
                        softWrap: false,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
