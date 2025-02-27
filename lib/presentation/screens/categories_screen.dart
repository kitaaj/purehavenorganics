import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_grid_card.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: categories.when(
        data:
            (categories) => CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SearchBar(
                      hintText: 'Search categories...',
                      leading: const Icon(Icons.search),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 1,
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final category = categories[index];
                      return CategoryGridCard(
                        category: category,
                        onTap:
                            () => Navigator.of(context,rootNavigator: true).pushNamed(
                              
                              AppRoutes.categoryRemedies,
                              arguments: category.displayName,
                            ),
                      );
                    }, childCount: categories.length),
                  ),
                ),
              ],
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
