import 'package:flutter/material.dart';

Color getEffectivenessColor(BuildContext context, int effectiveness) {
    final colors = Theme.of(context).colorScheme;
    switch (effectiveness) {
      case 5:
        return colors.primary;
      case 4:
        return colors.secondary;
      case 3:
        return colors.tertiary;
      case 2:
        return colors.error;
      case 1:
        return colors.error;
      default:
        return colors.outline;
    }
  }

 