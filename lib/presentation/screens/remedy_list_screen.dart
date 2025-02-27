import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/widgets/common/error_view.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';
import 'package:purehavenorganics/presentation/widgets/search/advanced_search_bar.dart';
import 'package:purehavenorganics/presentation/widgets/search/search_result_card.dart';

class RemedyListScreen extends ConsumerStatefulWidget {
  const RemedyListScreen({super.key});

  @override
  ConsumerState<RemedyListScreen> createState() => _RemedyListScreenState();
}

class _RemedyListScreenState extends ConsumerState<RemedyListScreen> {
  final _scrollController = ScrollController();
  final _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(remedyListProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final remediesAsync = ref.watch(remedyListProvider);
    final searchResults = ref.watch(searchResultsProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(remedyListProvider.notifier).refresh();
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                title: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child:
                      _searchFocusNode.hasFocus
                          ? const SizedBox.shrink()
                          : const Text('Natural Remedies'),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  child: AdvancedSearchBar(),
                ),
              ),
            ),

            // Search Results (if any)
            Consumer(
              builder: (context, ref, child) {
                return searchResults.when(
                  data:
                      (results) =>
                          results.results.isEmpty
                              ? const SliverToBoxAdapter(child: SizedBox())
                              : SliverAnimatedList(
                                initialItemCount: results.results.length,
                                itemBuilder: (context, index, animation) {
                                  return SlideTransition(
                                    position: animation.drive(
                                      Tween(
                                        begin: const Offset(1, 0),
                                        end: Offset.zero,
                                      ),
                                    ),
                                    child: FadeTransition(
                                      opacity: animation,
                                      child: SearchResultCard(
                                        result: results.results[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                  loading:
                      () => const SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  error:
                      (e, s) => SliverToBoxAdapter(
                        child: ErrorView(error: e, onRetry: () {}),
                      ),
                );
              },
            ),

            // Main Remedy List
            remediesAsync.when(
              data:
                  (remedies) => SliverAnimatedList(
                    initialItemCount: remedies.length,
                    itemBuilder: (context, index, animation) {
                      final remedy = remedies[index];
                      return SlideTransition(
                        position: animation.drive(
                          Tween(begin: const Offset(0, 0.5), end: Offset.zero),
                        ),
                        child: FadeTransition(
                          opacity: animation,
                          child: RemedyCard(
                            remedy: remedy,
                            onTap: () => _navigateToDetail(remedy),
                          ),
                        ),
                      );
                    },
                  ),
              loading:
                  () => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
              error:
                  (error, stack) => SliverFillRemaining(
                    child: ErrorView(
                      error: error,
                      onRetry: () => ref.refresh(remedyListProvider),
                    ),
                  ),
            ),

            // Loading More Indicator
            SliverToBoxAdapter(
              child: Consumer(
                builder: (context, ref, child) {
                  final isLoadingMore = ref.watch(isLoadingMoreProvider);
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child:
                        isLoadingMore
                            ? const Padding(
                              padding: EdgeInsets.all(16),
                              child: Center(child: CircularProgressIndicator()),
                            )
                            : const SizedBox(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToDetail(Remedy remedy) {
    Navigator.of(context,rootNavigator: true).pushNamed( AppRoutes.remedyDetail, arguments: remedy.remedyId);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }
}
