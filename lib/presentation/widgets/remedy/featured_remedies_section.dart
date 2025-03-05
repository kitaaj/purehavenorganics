import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedy_card.dart';

final random = math.Random();

class FeaturedRemediesSection extends ConsumerStatefulWidget {
  final List<FeaturedRemedy> remedies;

  const FeaturedRemediesSection({required this.remedies, super.key});

  @override
  ConsumerState<FeaturedRemediesSection> createState() =>
      FeaturedRemediesSectionState();
}

class FeaturedRemediesSectionState
    extends ConsumerState<FeaturedRemediesSection> {
  late CarouselController _controller;
  late int initialCarouselItem;

  @override
  void initState() {
    super.initState();
    initialCarouselItem = random.nextInt(widget.remedies.length);
    _controller = CarouselController(initialItem: initialCarouselItem);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Remedies',
                maxLines: 1,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height / 4.5),
          child: CarouselView.weighted(
            onTap: (int index) async {
              final fullRemedy = ref.read(
                remedySearchProvider(widget.remedies[index].remedyName),
              );
              fullRemedy.log();

              Navigator.pushNamed(
                context,
                AppRoutes.remedyDetail,
                arguments: RemedyDetailArguments.fromAsync(fullRemedy),
              );
              // } else {
              //   //TODO:Fetch the remedy from the DB
              //   // Show loading indicator
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(
              //       content: Text('Loading remedy details...'),
              //       duration: Duration(seconds: 2),
              //     ),
              //   );

              //   // Load more remedies and try again
              //   await ref.read(allRemediesProvider.notifier).loadMore();

              //   // Check again after loading more
              //   if (context.mounted) {
              //     final updatedRemedy = ref.read(
              //       selectedRemedyProvider(widget.remedies[index].remedyName),
              //     );
              //       Navigator.pushNamed(
              //         context,
              //         AppRoutes.remedyDetail,
              //         arguments: updatedRemedy,
              //       );
              //     // } else {
              //     //   ScaffoldMessenger.of(context).showSnackBar(
              //     //     const SnackBar(
              //     //       content: Text('Could not find remedy details'),
              //     //     ),
              //     //   );
              //     // }
              //   }
              // }
            },
            controller: _controller,
            itemSnapping: true,
            flexWeights: const [1, 11, 1],
            children:
                widget.remedies.map((remedy) {
                  return FeaturedRemedyCard(remedy: remedy);
                }).toList(),
          ),
        ),
      ],
    );
  }
}
