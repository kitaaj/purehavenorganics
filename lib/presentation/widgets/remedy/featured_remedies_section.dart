import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedy_card.dart';

class FeaturedRemediesSection extends ConsumerWidget {
  final List<FeaturedRemedy> remedies;

  const FeaturedRemediesSection({
    super.key,
    required this.remedies,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
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
            itemBuilder:
                (context, index) => FeaturedRemedyCard(remedy: remedies[index]),
          ),
        ),
      ],
    );
  }
}
