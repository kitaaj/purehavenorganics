import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/core/utils/responsive_grid_delegate.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/common/error_view.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';

class RemedyListScreen extends ConsumerStatefulWidget {
  const RemedyListScreen({super.key});

  @override
  ConsumerState<RemedyListScreen> createState() => _RemedyListScreenState();
}

class _RemedyListScreenState extends ConsumerState<RemedyListScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(allRemediesProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final remediesAsync = ref.watch(allRemediesProvider);
    final hasMore = ref.watch(allRemediesProvider.notifier).hasMore;

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(allRemediesProvider.notifier).refresh();
      },
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Featured Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Remedies',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Discover nature\'s most effective solutions',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Remedy Grid
          remediesAsync.when(
            data:
                (remedies) => SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: context.responsiveGridDelegate,
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final remedy = remedies[index];
                      return RemedyCard(
                        remedy: remedy,
                        onTap: () => _navigateToDetail(remedy),
                        showChips: false,
                      );
                    }, childCount: remedies.length),
                  ),
                ),
            loading:
                () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
            error:
                (error, stack) => SliverFillRemaining(
                  child: ErrorView(
                    error: error,
                    onRetry: () => ref.refresh(allRemediesProvider),
                  ),
                ),
          ),

          // Loading More Indicator
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Builder(
                builder: (context) {
                  if (remediesAsync.isLoading && hasMore) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!hasMore) {
                    return Center(
                      child: Text(
                        '— The bottom line —',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    );
                  }

                  return const SizedBox();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDetail(Remedy remedy) {
    final fullRemedy = ref.read(remedySearchProvider(remedy.name));

    Navigator.pushNamed(
      context,
      AppRoutes.remedyDetail,
      arguments: RemedyDetailArguments.fromAsync(fullRemedy),
    );
    // } else {
    //   ref.read(allRemediesProvider.notifier).loadMore();
    //   ScaffoldMessenger.of(
    //     context,
    //   ).showSnackBar(const SnackBar(content: Text('Loading more remedies...')));
    // }
    // Navigator.of(
    //   context,
    //   rootNavigator: true,
    // ).popAndPushNamed(AppRoutes.remedyDetail, arguments: fullRemedy);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
