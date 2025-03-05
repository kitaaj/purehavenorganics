import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/widgets/saved/saved_remedy_list_tile.dart';

class SavedRemediesList extends ConsumerWidget {
  final List<Remedy> items;
  const SavedRemediesList({required this.items, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              'No saved remedies yet',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Bookmark remedies to access them quickly',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      // separatorBuilder: (context, index) => const Divider(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final remedy = items[index];
        return SavedRemedyListTile(
          remedy: remedy,
          onTap:
              () => Navigator.pushNamed(
                context,
                AppRoutes.remedyDetail,
                arguments: RemedyDetailArguments.fromRemedy(remedy),
              ),
          onRemove: () {
            ref.read(savedItemsProvider.notifier).toggleRemedy(remedy);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${remedy.name} removed from saved'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    ref.read(savedItemsProvider.notifier).toggleRemedy(remedy);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
