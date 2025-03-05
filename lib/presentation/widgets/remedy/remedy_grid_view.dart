import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/core/utils/responsive_grid_delegate.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/animations/remedy_card_shimmer.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';

class RemedyGridView extends ConsumerWidget {
  const RemedyGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remediesAsync = ref.watch(allRemediesProvider);

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'For You',
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
        ),
        remediesAsync.when(
          data: (remedies) {
            final limitedRemedies = remedies.take(12);

            return SliverGrid(
              gridDelegate: context.responsiveGridDelegate,
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RemedyCard(
                    remedy: limitedRemedies.elementAt(index),
                    onTap: () {
                      final remedy = limitedRemedies.elementAt(index);

                      Navigator.pushNamed(
                        context,
                        AppRoutes.remedyDetail,
                        arguments: RemedyDetailArguments.fromRemedy(remedy),
                      );
                    },
                  ),
                );
              }, childCount: limitedRemedies.length),
            );
          },
          loading:
              () => SliverGrid(
                gridDelegate: context.responsiveGridDelegate,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => const RemedyCardShimmer(),
                  childCount: 12,
                ),
              ),
          error: (error, stack) {
            'Error: $error\nStackTrace: $stack'.log();
            return SliverToBoxAdapter(
              child: Center(child: Text('Error: $error')),
            );
          },
        ),

        // Bottom Line
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Text(
                '— The bottom line —',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
