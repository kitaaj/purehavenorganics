import 'package:flutter/material.dart';

extension ResponsiveGridExtension on BuildContext {
  int get gridCrossAxisCount {
    final width = MediaQuery.of(this).size.width;
    if (width < 450) return 1;
    if (width < 600) return 2;
    if (width < 1200) return 3;
    return 4;
  }

  SliverGridDelegateWithFixedCrossAxisCount get responsiveGridDelegate {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: gridCrossAxisCount,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: 16 / 9,
    );
  }
}
