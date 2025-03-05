import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:transparent_image/transparent_image.dart';
// import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedy_pattern_painter.dart';

class FeaturedRemedyCard extends ConsumerWidget {
  final FeaturedRemedy remedy;
  const FeaturedRemedyCard({required this.remedy, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.sizeOf(context).width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            ClipRect(
              child: OverflowBox(
                maxWidth: width * 11 / 10,
                minWidth: width * 11 / 10,
                child:
                    remedy.imgUrl != null
                        ? CachedNetworkImage(
                          imageUrl: remedy.imgUrl!,
                          fit: BoxFit.cover,
                          fadeInDuration: const Duration(milliseconds: 500),
                          fadeInCurve: Curves.easeIn,
                          placeholder:
                              (context, url) => Image.memory(
                                kTransparentImage,
                                fit: BoxFit.cover,
                              ),
                          errorWidget:
                              (context, url, error) =>
                                  Text('Failed to load image'),
                        )
                        : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Theme.of(context).colorScheme.primary,
                                Theme.of(context).colorScheme.secondary,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                        ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 18.0,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children:
                                remedy.primaryUses
                                    .take(2)
                                    .map(
                                      (use) => Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withValues(
                                            alpha: 0.2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        child: Text(
                                          use,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                          overflow: TextOverflow.clip,
                                          softWrap: false,
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                          const SizedBox(width: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                remedy.effectivenessScore.toStringAsFixed(1),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
