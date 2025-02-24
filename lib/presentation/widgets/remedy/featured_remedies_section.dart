import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedy_card.dart';

class FeaturedRemediesSection extends ConsumerWidget {
  const FeaturedRemediesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featuredRemedies = ref.watch(featuredRemediesProvider);

    return featuredRemedies.when(
      data: (remedies) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Featured Remedies',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: remedies.length,
              itemBuilder: (context, index) => FeaturedRemedyCard(
                remedy: remedies[index],
              ),
            ),
          ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}