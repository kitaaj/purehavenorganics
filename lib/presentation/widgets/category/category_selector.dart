import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_card.dart';

class CategorySelector extends ConsumerWidget {
  final Function(String) onCategorySelected;

  const CategorySelector({
    required this.onCategorySelected,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(remedyCategoriesProvider);

    return categories.when(
      data: (categories) => SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryCard(
              title: category.categoryName,
              description: category.description,
              onTap: () => onCategorySelected(category.categoryName),
            );
          },
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
    );
  }
}