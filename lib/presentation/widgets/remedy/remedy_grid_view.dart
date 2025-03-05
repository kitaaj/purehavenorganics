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

    return remediesAsync.when(
      data:
          (remedies) => SliverGrid(
            gridDelegate: context.responsiveGridDelegate,
            delegate: SliverChildBuilderDelegate(
              (context, index) => RemedyCard(
                remedy: remedies[index],
                onTap: () {
                  final remedy = remedies[index];

                  Navigator.pushNamed(
                    context,
                    AppRoutes.remedyDetail,
                    arguments: RemedyDetailArguments.fromRemedy(remedy),
                  );
                },
              ),
              childCount: remedies.length,
            ),
          ),
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
        return SliverToBoxAdapter(child: Center(child: Text('Error: $error')));
      },
    );
  }
}
