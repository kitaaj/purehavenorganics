import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:transparent_image/transparent_image.dart';

class RemediesByCategoryCard extends StatelessWidget {
  final RemediesByCategory remedy;
  final VoidCallback? onTap;
  final bool showChips;

  const RemediesByCategoryCard({
    super.key,
    required this.remedy,
    this.onTap,
    this.showChips = true,
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
            // Hero widget for smooth transitions on tap.
            Hero(
              tag: remedy.remedyName,
              child: remedy.imgUrl != null
                  ? CachedNetworkImage(
                      imageUrl: remedy.imgUrl!,
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeInCurve: Curves.easeIn,
                      placeholder: (context, url) => Image.memory(
                        kTransparentImage,
                        fit: BoxFit.cover,
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Icon(Icons.error, color: Colors.red),
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).colorScheme.primary,
                            Theme.of(context).colorScheme.secondary,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
            ),
            // Overlay for remedy name and scientific name.
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
                      const SizedBox(height: 4),
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
                    if (showChips && (remedy.primaryUses?.isNotEmpty ?? false))
                      ...[
                        const SizedBox(height: 4),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: remedy.primaryUses!
                                .take(2)
                                .map(
                                  (use) => Container(
                                    margin: const EdgeInsets.only(right: 4),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 3.5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withValues(alpha:0.2),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      use,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.fade,
                                      softWrap: false,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
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
