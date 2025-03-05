import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/navigation/main_drawer.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_grid_view.dart';
import 'package:purehavenorganics/presentation/widgets/search/advanced_search_bar.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_selector.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedies_section.dart';
import 'package:purehavenorganics/presentation/widgets/animations/featured_section_shimmer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featuredRemedies = ref.watch(featuredRemediesProvider);

    return Scaffold(
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // expandedHeight: 80,
            // floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: const Text('Natural Remedies'),

              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).primaryColor.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // actions: [
            //   IconButton(
            //     icon: const Icon(Icons.notifications_outlined),
            //     onPressed: () {
            //       // Handle notifications
            //     },
            //   ),
            // ],
          ),
          // User Profile Section
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(16),
          //         child: Row(
          //           children: [
          //             CircleAvatar(
          //               radius: 30,
          //               backgroundColor: Theme.of(context).colorScheme.primary,
          //               child: Icon(
          //                 Icons.person,
          //                 size: 32,
          //                 color: Theme.of(context).colorScheme.onPrimary,
          //               ),
          //             ),
          //             const SizedBox(width: 16),
          //             Expanded(
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text(
          //                     'Welcome!',
          //                     maxLines: 1,
          //                     overflow: TextOverflow.fade,
          //                     style: Theme.of(context).textTheme.titleLarge,
          //                   ),
          //                   TextButton(
          //                     onPressed: () {
          //                       Navigator.pushNamed(context, AppRoutes.profile);
          //                     },
          //                     child: const Text(
          //                       'Sign in to personalize your experience',
          //                       maxLines: 1,
          //                       overflow: TextOverflow.fade,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: AdvancedSearchBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CategorySelector(
                onCategorySelected: (category) {
                  Navigator.of(context, rootNavigator: true).pushNamed(
                    AppRoutes.healthCategoryRemedies,
                    arguments: category,
                  );
                },
              ),
            ),
          ),
          featuredRemedies.when(
            data:
                (remedies) => SliverToBoxAdapter(
                  child: FeaturedRemediesSection(remedies: remedies),
                ),
            loading: () => SliverToBoxAdapter(child: FeaturedSectionShimmer()),
            error:
                (error, _) => SliverToBoxAdapter(
                  child: Center(child: Text('Error: $error')),
                ),
          ),

          const RemedyGridView(),
        ],
      ),
    );
  }
}
