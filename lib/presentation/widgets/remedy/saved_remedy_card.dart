import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class SavedRemedyCard extends StatelessWidget {
  final Remedy remedy;
  final VoidCallback? onTap;
  final bool showChips;

  const SavedRemedyCard({
    required this.remedy,
    this.onTap,
    super.key,
    this.showChips = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 2,
          child: InkWell(
            onTap: onTap,
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.bottomStart,
              children: [
                // Image or Gradient Background
                Hero(
                  tag: remedy.remedyId,
                  child:
                      remedy.imgUrl != null
                          ? CachedNetworkImage(
                            imageUrl: remedy.imgUrl!,
                            fit: BoxFit.cover,
                            placeholder:
                                (context, url) =>
                                    Center(child: CircularProgressIndicator()),
                            errorWidget:
                                (context, url, error) =>
                                    Text('Failed to load image'),
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
                          remedy.name,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.clip,
                          softWrap: false,
                        ),
                        // if (remedy.scientificName != null) ...[
                        //   Text(
                        //     remedy.scientificName!,
                        //     style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        //       color: Colors.white70,
                        //       fontStyle: FontStyle.italic,
                        //     ),
                        //     overflow: TextOverflow.clip,
                        //     softWrap: false,
                        //   ),
                        // ],
                        const SizedBox(height: 4),
                        if (showChips &&
                            (remedy.primaryEffects?.isNotEmpty ?? false)) ...[
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Wrap(
                                  spacing: 4,
                                  runSpacing: 4,
                                  children:
                                      (remedy.primaryEffects ?? [])
                                          .take(2)
                                          .map(
                                            (effect) => Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 4,
                                                    vertical: 3.5,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: Colors.white.withValues(
                                                  alpha: 0.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Text(
                                                effect.toString(),
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
                              ],
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
        ),
      ),
    );
  }
}
