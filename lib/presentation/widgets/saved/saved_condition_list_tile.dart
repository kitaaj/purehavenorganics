import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';

class SavedConditionListTile extends ConsumerWidget {
  final Condition condition;

  const SavedConditionListTile({
    required this.condition,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.colorScheme.secondary,
                theme.colorScheme.primary,
              ],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              Icons.medical_information,
              color: theme.colorScheme.onPrimary,
              size: 32,
            ),
          ),
        ),
        title: Text(
          condition.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (condition.description != null) ...[
              const SizedBox(height: 8),
              Text(
                condition.description!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (condition.symptoms != null) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: condition.symptoms!.take(2).map((symptom) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withValues(alpha:0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      symptom,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            ref.read(savedItemsProvider.notifier).toggleCondition(condition);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${condition.name} removed from saved'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    ref.read(savedItemsProvider.notifier).toggleCondition(condition);
                  },
                ),
              ),
            );
          },
          tooltip: 'Remove from saved',
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/condition-detail',
            arguments: condition.name,
          );
        },
      ),
    );
  }
}