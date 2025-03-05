import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/animations/category_selector_shimmer.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_card.dart';

class CategorySelector extends ConsumerWidget {
  final Function(RemedyCategory) onCategorySelected;

  const CategorySelector({required this.onCategorySelected, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(remedyCategoriesProvider);
    final height = MediaQuery.sizeOf(context).height;

    return categories.when(
      data:
          (categories) => ConstrainedBox(
            constraints: BoxConstraints(maxHeight: height / 6),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryCard(
                  category: category,
                  onTap: () => onCategorySelected(category),
                );
              },
            ),
          ),
      loading: () => const CategorySelectorShimmer(),
      error: (error, _) => Center(child: Text('Error: $error')),
    );
  }
}
