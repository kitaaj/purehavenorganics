import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/widgets/condition/related_conditions_list.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/condition_remedy_grid.dart';

class ConditionDetailScreen extends ConsumerWidget {
  final Condition condition;

  const ConditionDetailScreen({required this.condition, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final relatedConditions = ref.watch(
      relatedConditionsProvider(condition.name),
    );
    final remediesForCondition = ref.watch(
      remediesForConditionProvider(condition.name),
    );
    final savedItemsAsync = ref.watch(savedItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(condition.name),
        actions: [
          savedItemsAsync.when(
            data:
                (savedItems) => IconButton(
                  icon: Icon(
                    savedItems.conditions.any((c) => c.name == condition.name)
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  onPressed: () {
                    ref
                        .read(savedItemsProvider.notifier)
                        .toggleCondition(condition);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          savedItems.conditions.any(
                                (c) => c.name == condition.name,
                              )
                              ? '${condition.name} removed from favorites'
                              : '${condition.name} added to favorites',
                        ),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            ref
                                .read(savedItemsProvider.notifier)
                                .toggleCondition(condition);
                          },
                        ),
                      ),
                    );
                  },
                ),
            loading:
                () => const IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: null,
                ),
            error:
                (_, __) => IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Unable to access saved items'),
                      ),
                    );
                  },
                ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          relatedConditions.when(
            data:
                (conditions) => SliverToBoxAdapter(
                  child: RelatedConditionsList(conditions: conditions),
                ),
            loading:
                () => const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                ),
            error:
                (error, _) => SliverToBoxAdapter(
                  child: Center(child: Text('Error: $error')),
                ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Recommended Remedies',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          remediesForCondition.when(
            data: (remedies) => ConditionRemedyGrid(remedies: remedies),
            loading:
                () => const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                ),
            error:
                (error, _) => SliverToBoxAdapter(
                  child: Center(child: Text('Error: $error')),
                ),
          ),
        ],
      ),
    );
  }
}
