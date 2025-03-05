import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/screens/categories_screen.dart';
import 'package:purehavenorganics/presentation/screens/remedy_list_screen.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';

class RemediesScreen extends ConsumerWidget {
  const RemediesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedItemsAsync = ref.watch(savedItemsProvider);

    return savedItemsAsync.when(
      data: (savedItems) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Remedies'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Remedies'),
                  Tab(text: 'Remedies by condition category'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                RemedyListScreen(),
                CategoriesScreen(),
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
