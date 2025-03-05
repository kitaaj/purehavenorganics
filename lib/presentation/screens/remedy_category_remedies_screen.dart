import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/core/utils/responsive_grid_delegate.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_category_card.dart';

class HealthCategoryRemediesScreen extends ConsumerWidget {
  final RemedyCategory category;

  const HealthCategoryRemediesScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remediesState = ref.watch(
      categoryRemediesProvider(category.categoryName),
    );

    return Scaffold(
      appBar: AppBar(title: Text(category.categoryName)),
      body: remediesState.when(
        data: (remedies) {
          if (remedies.isEmpty) {
            return Center(
              child: Text(
                'No remedies found in ${category.categoryName}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: context.responsiveGridDelegate,
            itemCount: remedies.length,
            itemBuilder: (context, index) {
              final remedy = remedies[index];
              final fullRemedy = ref.watch(
                remedySearchProvider(remedy.remedyName),
              );
              return RemediesByCategoryCard(
                remedy: remedy,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.remedyDetail,
                    arguments: RemedyDetailArguments.fromAsync(fullRemedy),
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
