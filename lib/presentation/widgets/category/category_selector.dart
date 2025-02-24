import 'package:flutter/material.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_card.dart';

class CategorySelector extends StatelessWidget {
  final Function(String) onCategorySelected;

  const CategorySelector({
    required this.onCategorySelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(
            icon: Icons.local_hospital,
            title: 'Herbs',
            onTap: () => onCategorySelected('Herbs'),
          ),
          CategoryCard(
            icon: Icons.spa,
            title: 'Essential Oils',
            onTap: () => onCategorySelected('Essential Oils'),
          ),
          // Add more categories
        ],
      ),
    );
  }
}