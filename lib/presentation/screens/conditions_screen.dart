import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/condition/condition_list_tile.dart';
import 'package:purehavenorganics/presentation/widgets/condition/condition_search_result_tile.dart';
import 'package:purehavenorganics/presentation/widgets/condition/featured_condition_card.dart';

class ConditionsScreen extends ConsumerStatefulWidget {
  const ConditionsScreen({super.key});

  @override
  ConsumerState<ConditionsScreen> createState() => _ConditionsScreenState();
}

class _ConditionsScreenState extends ConsumerState<ConditionsScreen> {
  final _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final conditions = ref.watch(conditionsProvider);
    final searchResults = ref.watch(conditionSearchProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('Health Conditions'),
            floating: true,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SearchBar(
                  controller: _searchController,
                  hintText: 'Search conditions or symptoms...',
                  leading: const Icon(Icons.search),
                  trailing: [
                    if (_searchController.text.isNotEmpty)
                      IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _isSearching = false);
                          ref
                              .read(conditionSearchProvider.notifier)
                              .clearSearch();
                        },
                      ),
                  ],
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => _isSearching = false);
                      ref.read(conditionSearchProvider.notifier).clearSearch();
                    } else {
                      setState(() => _isSearching = true);
                      ref
                          .read(conditionSearchProvider.notifier)
                          .searchConditions(searchTerm: value);
                    }
                  },
                ),
              ),
            ),
          ),
          if (!_isSearching) ...[
            // Featured Conditions Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Common Conditions',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 160,
                child: conditions.when(
                  data:
                      (items) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: items.take(5).length,
                        itemBuilder: (context, index) {
                          final condition = items[index];
                          return FeaturedConditionCard(
                            condition: condition,
                            onTap:
                                () => Navigator.of(
                                  context,
                                  rootNavigator: true,
                                ).pushNamed(
                                  AppRoutes.conditionDetail,
                                  arguments: condition.name,
                                ),
                          );
                        },
                      ),
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text('Error: $error')),
                ),
              ),
            ),
            // All Conditions Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'All Conditions',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            conditions.when(
              data:
                  (items) => SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final condition = items[index];
                      return ConditionListTile(
                        condition: condition,
                        onTap:
                            () => Navigator.of(
                              context,
                              rootNavigator: true,
                            ).pushNamed(
                              AppRoutes.conditionDetail,
                              arguments: condition.name,
                            ),
                      );
                    }, childCount: items.length),
                  ),
              loading:
                  () => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
              error:
                  (error, _) => SliverFillRemaining(
                    child: Center(child: Text('Error: $error')),
                  ),
            ),
          ] else ...[
            // Search Results
            searchResults.when(
              data:
                  (items) =>
                      items.isEmpty
                          ? const SliverFillRemaining(
                            child: Center(child: Text('No conditions found')),
                          )
                          : SliverList(
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final result = items[index];
                              return ConditionSearchResultTile(
                                result: result,
                                onTap:
                                    () => Navigator.of(
                                      context,
                                      rootNavigator: true,
                                    ).pushNamed(
                                      AppRoutes.conditionDetail,
                                      arguments: result.conditionName,
                                    ),
                              );
                            }, childCount: items.length),
                          ),
              loading:
                  () => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
              error:
                  (error, _) => SliverFillRemaining(
                    child: Center(child: Text('Error: $error')),
                  ),
            ),
          ],
        ],
      ),
    );
  }
}
