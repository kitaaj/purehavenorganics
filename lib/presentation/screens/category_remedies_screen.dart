import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_by_category_card.dart';

class CategoryRemediesScreen extends ConsumerWidget {
  final String category;

  const CategoryRemediesScreen({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remedies = ref.watch(categoryRemediesProvider(category));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(category),
            pinned: true,
          ),
          remedies.when(
            data: (remedies) => remedies.isEmpty
                ? const SliverFillRemaining(
                    child: Center(
                      child: Text('No remedies found in this category'),
                    ),
                  )
                : SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.75,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final remedy = remedies[index];
                          return RemedyByCategoryCard(
                            remedy: remedy,
                            onTap: () => Navigator.of(context,rootNavigator: true).pushNamed(
                              
                              AppRoutes.remedyDetail,
                              arguments: remedy.remedyName,
                            ),
                          );
                        },
                        childCount: remedies.length,
                      ),
                    ),
                  ),
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SliverFillRemaining(
              child: Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}