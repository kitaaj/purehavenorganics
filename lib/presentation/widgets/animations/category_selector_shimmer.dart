import 'package:flutter/material.dart';
import 'package:purehavenorganics/presentation/widgets/animations/shimmer_container.dart';

class CategorySelectorShimmer extends StatelessWidget {
  const CategorySelectorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height / 6),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 5, // Show 5 shimmer items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ShimmerContainer(
              width: 100,
              height: height / 6,
              borderRadius: BorderRadius.circular(12),
            ),
          );
        },
      ),
    );
  }
}