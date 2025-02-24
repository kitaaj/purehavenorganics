import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_grid_view.dart';
import 'package:purehavenorganics/presentation/widgets/search/search_bar_delegate.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_selector.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/featured_remedies_section.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Natural Remedies'),
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
                          Theme.of(context).primaryColor.withValues(alpha:0.7),
                        ],
                      ),
                    ),
                  ),
                  // Placeholder for hero image
                  const Positioned.fill(
                    child: ColoredBox(color: Colors.black12),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: SearchBarDelegate(
              ref: ref,
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: CategorySelector(
                onCategorySelected: (category) {
                  // Handle category selection
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FeaturedRemediesSection(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: RemedyGridView(),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.healing),
            label: 'Conditions',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (index) {
          // Handle navigation
        },
      ),
    );
  }
}