import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';
import 'package:purehavenorganics/presentation/widgets/search/advanced_search_bar.dart';

class RemedyListScreen extends ConsumerWidget {
  const RemedyListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remediesAsync = ref.watch(remedyListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Natural Remedies'),
      ),
      body: Column(
        children: [
          // Search bar in a fixed position
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AdvancedSearchBar(),
          ),
          // Remedy list in scrollable area
          Expanded(
            child: remediesAsync.when(
              data: (remedies) => ListView.builder(
                padding: const EdgeInsets.only(top: 8),
                itemCount: remedies.length,
                itemBuilder: (context, index) {
                  final remedy = remedies[index];
                  return RemedyCard(remedy: remedy);
                },
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stack) => Center(
                child: Text('Error: $error'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
