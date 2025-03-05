import 'package:flutter/material.dart';

IconData getRemedyCategoryIcon(String category) {
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

IconData getHealthCategoryIcon(String categoryName) {
  final name = categoryName.toLowerCase().trim();
  if (name.contains('digestive')) return Icons.lunch_dining;
  if (name.contains('respiratory')) return Icons.air;
  if (name.contains('skin')) return Icons.face;
  if (name.contains('mental')) return Icons.psychology;
  if (name.contains('nervous')) return Icons.psychology;
  if (name.contains('muscle')) return Icons.fitness_center;
  if (name.contains('urinary')) return Icons.water_drop;
  if (name.contains('reproductive')) return Icons.favorite;
  if (name.contains('sleep')) return Icons.bedtime;
  if (name.contains('pain')) return Icons.healing;
  if (name.contains('wound')) return Icons.medical_services;
  if (name.contains('weight')) return Icons.monitor_weight;
  if (name.contains('thyroid')) return Icons.medical_information;
  return Icons.health_and_safety;
}
