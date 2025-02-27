import 'package:flutter/material.dart';

IconData getIconForType(String type) {
  switch (type) {
    case 'remedy':
      return Icons.grass;
    case 'condition':
      return Icons.healing;
    case 'symptom':
      return Icons.sick;
    default:
      return Icons.search;
  }
}
