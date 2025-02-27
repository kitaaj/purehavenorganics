  import 'package:flutter/material.dart';

IconData getCategoryIcon(String category) {
    switch (category.toLowerCase()) {
      case 'herbs':
        return Icons.eco;
      case 'supplements':
        return Icons.medication;
      case 'oils':
        return Icons.water_drop;
      case 'foods':
        return Icons.restaurant;
      default:
        return Icons.healing;
    }
  }
