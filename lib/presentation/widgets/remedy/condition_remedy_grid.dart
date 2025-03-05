import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/core/utils/responsive_grid_delegate.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/condition_remedy_card.dart';

class ConditionRemedyGrid extends ConsumerWidget {
  final List<RemediesForCondition> remedies;

  const ConditionRemedyGrid({required this.remedies, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (remedies.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(child: Text('No remedies found for this condition')),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid(
        gridDelegate: context.responsiveGridDelegate,
        delegate: SliverChildBuilderDelegate((context, index) {
          final remedy = remedies[index];
          return ConditionRemedyCard(
            remedy: remedy,
            onTap: () async {
              final fullRemedy = ref.read(
                remedySearchProvider(remedy.remedyName),
              );
              Navigator.pushNamed(
                context,
                AppRoutes.remedyDetail,
                arguments: RemedyDetailArguments.fromAsync(fullRemedy),
              );
              // } else {
              //   ref.read(allRemediesProvider.notifier).loadMore();
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Loading more remedies...')),
              //   );
              // }
            },
          );
        }, childCount: remedies.length),
      ),
    );
  }
}
