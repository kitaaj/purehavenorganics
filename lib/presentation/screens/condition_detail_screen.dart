import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/condition/related_conditions_list.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/condition_remedy_grid.dart';

class ConditionDetailScreen extends ConsumerWidget {
  final String conditionName;

  const ConditionDetailScreen({required this.conditionName, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final relatedConditions = ref.watch(relatedConditionsProvider(conditionName));
    final remediesForCondition = ref.watch(remediesForConditionProvider(conditionName));

       return Scaffold(
      appBar: AppBar(
        title: Text(conditionName),
      ),
      body: CustomScrollView(
        slivers: [
          relatedConditions.when(
            data: (conditions) => SliverToBoxAdapter(
              child: RelatedConditionsList(conditions: conditions),
            ),
            loading: () => const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SliverToBoxAdapter(
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
            loading: () => const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SliverToBoxAdapter(
              child: Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}