import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedSectionShimmer extends StatelessWidget {
  const FeaturedSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Shimmer.fromColors(
            baseColor: colorScheme.primary.withValues(alpha: 0.2),
            highlightColor: colorScheme.primary.withValues(alpha: 0.05),
            child: Container(
              width: 180,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height / 4.5),
          child: Shimmer.fromColors(
            baseColor: colorScheme.primary.withValues(alpha: 0.2),
            highlightColor: colorScheme.primary.withValues(alpha: 0.05),
            child: Container(
              width: width * 11 / 10,
              height: height / 4.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
