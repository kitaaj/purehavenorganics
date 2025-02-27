import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';

class RemedyGridView extends ConsumerWidget {
  const RemedyGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remediesAsync = ref.watch(remedyListProvider);

    return remediesAsync.when(
      data:
          (remedies) => SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // childAspectRatio: 0.75,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => RemedyCard(remedy: remedies[index]),
              childCount: remedies.length,
            ),
          ),
      loading:
          () => const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          ),
      error:
          (error, stack) =>
              SliverToBoxAdapter(child: Center(child: Text('Error: $error'))),
    );
  }
}
