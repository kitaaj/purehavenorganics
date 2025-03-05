import 'package:flutter/material.dart';
import 'package:purehavenorganics/presentation/widgets/animations/shimmer_container.dart';

class FeaturedRemedyCardShimmer extends StatelessWidget {
  const FeaturedRemedyCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return ShimmerContainer(
      width: width * 11 / 10,
      height: height / 4.5,
      borderRadius: BorderRadius.circular(15),
    );
  }
}