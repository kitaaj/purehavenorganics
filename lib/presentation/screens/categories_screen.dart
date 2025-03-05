import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_group_card.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Map<HealthCategory, List<HealthCategory>> _organizeCategories(
    List<HealthCategory> categories,
  ) {
    final Map<HealthCategory, List<HealthCategory>> organized = {};

    // Get parent categories (level 0)
    final parentCategories =
        categories.where((cat) => cat.level == 0).toList()..sort(
          (a, b) => a.displayName.toLowerCase().compareTo(
            b.displayName.toLowerCase(),
          ),
        );

    // Organize subcategories under their parents
    for (var parent in parentCategories) {
      final children =
          categories
              .where((cat) => cat.parentCategoryId == parent.categoryId)
              .toList()
            ..sort(
              (a, b) => a.displayName.trim().compareTo(b.displayName.trim()),
            );
      organized[parent] = children;
    }

    return organized;
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      body: SafeArea(
        child: categories.when(
          data: (allCategories) {
            final organizedCategories = _organizeCategories(allCategories);
            final filteredCategories =
                _searchQuery.isEmpty
                    ? organizedCategories
                    : _filterCategories(organizedCategories, _searchQuery);

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Condition Categories',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Explore natural remedies by health or condition categories',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SearchBar(
                          controller: _searchController,
                          hintText: 'Search categories...',
                          leading: const Icon(Icons.search),
                          trailing: [
                            if (_searchQuery.isNotEmpty)
                              IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    _searchController.clear();
                                    _searchQuery = '';
                                  });
                                },
                              ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _searchQuery = value.trim().toLowerCase();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                if (filteredCategories.isEmpty)
                  const SliverFillRemaining(
                    child: Center(child: Text('No categories found')),
                  )
                else
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final parent = filteredCategories.keys.elementAt(index);
                      final children = filteredCategories[parent] ?? [];

                      return CategoryGroupCard(
                        parent: parent,
                        children: children,
                        onCategoryTap: (category) {
                          Navigator.of(context, rootNavigator: true).pushNamed(
                            AppRoutes.categoryRemedies,
                            arguments: category,
                          );
                        },
                      );
                    }, childCount: filteredCategories.length),
                  ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error:
              (error, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    Text('Error: $error'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => ref.refresh(categoriesProvider),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }

  Map<HealthCategory, List<HealthCategory>> _filterCategories(
    Map<HealthCategory, List<HealthCategory>> categories,
    String query,
  ) {
    final Map<HealthCategory, List<HealthCategory>> filtered = {};

    for (final entry in categories.entries) {
      if (entry.key.displayName.toLowerCase().contains(query.toLowerCase())) {
        // If parent matches, include all children
        filtered[entry.key] = entry.value;
      } else {
        // Check children
        final matchingChildren =
            entry.value
                .where(
                  (child) => child.displayName.toLowerCase().contains(
                    query.toLowerCase(),
                  ),
                )
                .toList();
        if (matchingChildren.isNotEmpty) {
          filtered[entry.key] = matchingChildren;
        }
      }
    }

    return filtered;
  }
}
