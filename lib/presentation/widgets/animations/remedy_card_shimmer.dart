import 'package:flutter/material.dart';
import 'package:purehavenorganics/presentation/widgets/animations/shimmer_container.dart';

class RemedyCardShimmer extends StatelessWidget {
  const RemedyCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: ShimmerContainer(
        width: double.infinity,
        height: double.infinity,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}