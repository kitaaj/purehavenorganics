import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/presentation/widgets/saved/saved_condition_list_tile.dart';

class SavedConditionsList extends StatelessWidget {
  final List<Condition> items;

  const SavedConditionsList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              'No saved conditions',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Save conditions to track them easily',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final condition = items[index];
        return SavedConditionListTile(condition: condition);
      },
    );
  }
}
