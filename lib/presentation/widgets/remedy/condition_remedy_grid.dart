import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/condition_remedy_card.dart';

class ConditionRemedyGrid extends StatelessWidget {
  final List<RemediesForCondition> remedies;

  const ConditionRemedyGrid({required this.remedies, super.key});

  @override
  Widget build(BuildContext context) {
    if (remedies.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(child: Text('No remedies found for this condition')),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final remedy = remedies[index];
          return ConditionRemedyCard(
            remedy: remedy,
            onTap:
                () => Navigator.of(context).pushNamed(
                  AppRoutes.remedyDetail,
                  arguments: remedy.remedyName,
                ),
          );
        }, childCount: remedies.length),
      ),
    );
  }
}
