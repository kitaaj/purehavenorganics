import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/widgets/saved/saved_remedies_list.dart';
import 'package:purehavenorganics/presentation/widgets/saved/saved_conditions_list.dart';

class SavedItemsScreen extends ConsumerWidget {
  const SavedItemsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedItemsAsync = ref.watch(savedItemsProvider);

    return savedItemsAsync.when(
      data: (savedItems) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Saved Items'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Remedies'),
                  Tab(text: 'Conditions'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                SavedRemediesList(items: savedItems.remedies),
                SavedConditionsList(items: savedItems.conditions),
              ],
            ),
          ),
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
    );
  }
}
