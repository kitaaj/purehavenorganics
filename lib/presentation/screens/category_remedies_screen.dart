import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/core/utils/responsive_grid_delegate.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_by_category_card.dart';

class CategoryRemediesScreen extends ConsumerWidget {
  final HealthCategory category;

  const CategoryRemediesScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remedies = ref.watch(
      healthCategoryRemediesProvider(category.categoryId),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(title: Text(category.displayName), pinned: true),
          remedies.when(
            data:
                (remedies) =>
                    remedies.isEmpty
                        ? const SliverFillRemaining(
                          child: Center(
                            child: Text('No remedies found in this category'),
                          ),
                        )
                        : SliverPadding(
                          padding: const EdgeInsets.all(16),
                          sliver: SliverGrid(
                            gridDelegate: context.responsiveGridDelegate,
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final remedy = remedies[index];
                              return RemedyByCategoryCard(
                                remedyData: remedy,
                                onTap: () {
                                  final fullRemedy = ref.read(
                                    remedySearchProvider(remedy.remedyName),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.remedyDetail,
                                    arguments: RemedyDetailArguments.fromAsync(fullRemedy),
                                  );
                                },
                              );
                            }, childCount: remedies.length),
                          ),
                        ),
            loading:
                () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
            error:
                (error, _) => SliverFillRemaining(
                  child: Center(child: Text('Error: $error')),
                ),
          ),
        ],
      ),
    );
  }
}
