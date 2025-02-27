import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/widgets/condition/condition_list_tile.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/saved_remedy_card.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedItems = ref.watch(savedItemsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(title: const Text('Profile'), pinned: true),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Profile Header
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Guest User',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement sign in
                              },
                              child: const Text('Sign in to sync your data'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Saved Items Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Saved Items',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          savedItems.when(
            data:
                (items) => SliverList(
                  delegate: SliverChildListDelegate([
                    // Saved Remedies
                    if (items.remedies.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Saved Remedies',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigate to saved remedies
                              },
                              child: const Text('See All'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: items.remedies.take(5).length,
                          itemBuilder: (context, index) {
                            final remedy = items.remedies[index];
                            return SavedRemedyCard(
                              remedy: remedy,
                              onTap:
                                  () => Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).pushNamed(
                                    AppRoutes.remedyDetail,
                                    arguments: remedy.remedyId,
                                  ),
                            );
                          },
                        ),
                      ),
                    ],
                    // Saved Conditions
                    if (items.conditions.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Saved Conditions',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigate to saved conditions
                              },
                              child: const Text('See All'),
                            ),
                          ],
                        ),
                      ),
                      ...items.conditions
                          .take(5)
                          .map(
                            (condition) => ConditionListTile(
                              condition: condition,
                              onTap:
                                  () => Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).pushNamed(
                                    AppRoutes.conditionDetail,
                                    arguments: condition.name,
                                  ),
                            ),
                          ),
                    ],
                    if (items.remedies.isEmpty && items.conditions.isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: Text('No saved items yet'),
                        ),
                      ),
                  ]),
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
          // Settings Section
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: const Text('Dark Mode'),
                  trailing: Switch(
                    value: Theme.of(context).brightness == Brightness.dark,
                    onChanged: (value) {
                      // Toggle theme
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text('Notifications'),
                  onTap: () {
                    // Navigate to notifications settings
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text('Language'),
                  onTap: () {
                    // Navigate to language settings
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('About'),
                  onTap: () {
                    // Show about dialog
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
