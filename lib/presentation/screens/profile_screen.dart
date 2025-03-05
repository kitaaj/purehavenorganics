import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/providers/core_providers.dart' as core;
import 'package:purehavenorganics/core/utils/get_theme_mode_text.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/presentation/bottom_sheets/show_help_and_support_bottom_sheet.dart';
import 'package:purehavenorganics/presentation/dialogs/show_about_dialog.dart';
import 'package:purehavenorganics/presentation/dialogs/show_language_dialog.dart';
import 'package:purehavenorganics/presentation/pages/show_Privacy_policy.dart';
import 'package:purehavenorganics/presentation/pages/show_terms_of_service.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/theme_notifier.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/screens/theme_settings_screen.dart';
import 'package:purehavenorganics/presentation/widgets/condition/condition_list_tile.dart';
import 'package:purehavenorganics/presentation/widgets/profile/settings/settings_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/saved_remedy_card.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.sizeOf(context).height;
    final savedItems = ref.watch(savedItemsProvider);
    final preferences = ref.watch(core.userPreferencesProvider);

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
                          color: Colors.grey.shade700,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey.shade400,
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
                        height: height / 7,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: items.remedies.take(3).length,
                          itemBuilder: (context, index) {
                            final remedy = items.remedies[index];
                            return SavedRemedyCard(
                              remedy: remedy,
                              showChips: false,
                              onTap:
                                  () => Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).pushNamed(
                                    AppRoutes.remedyDetail,
                                    arguments: RemedyDetailArguments.fromRemedy(remedy),
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
                          .take(3)
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
                SettingsSection(
                  title: 'Notifications',
                  children: [
                    SwitchListTile(
                      title: const Text('Push Notifications'),
                      subtitle: const Text(
                        'Receive important updates and reminders',
                      ),
                      value: preferences.pushNotifications,
                      onChanged:
                          (value) => ref
                              .read(core.userPreferencesProvider.notifier)
                              .setPushNotifications(value),
                    ),
                    SwitchListTile(
                      title: const Text('Daily Tips'),
                      subtitle: const Text(
                        'Get daily wellness tips and herb recommendations',
                      ),
                      value: preferences.dailyTips,
                      onChanged:
                          (value) => ref
                              .read(core.userPreferencesProvider.notifier)
                              .setDailyTips(value),
                    ),
                    SwitchListTile(
                      title: const Text('Weekly Newsletter'),
                      subtitle: const Text(
                        'Receive weekly digest of new herbs and wellness articles',
                      ),
                      value: preferences.weeklyNewsletter,
                      onChanged:
                          (value) => ref
                              .read(core.userPreferencesProvider.notifier)
                              .setWeeklyNewsletter(value),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Appearance Section
                SettingsSection(
                  title: 'Appearance',
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.palette_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: const Text('Theme'),
                      subtitle: Text(
                        getThemeModeText(ref.watch(themeProvider)),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ThemeSettingsScreen(),
                            ),
                          ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.language),
                      title: const Text('Language'),
                      subtitle: Text(preferences.language),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => showLanguageDialog(context, ref),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Support Section
                SettingsSection(
                  title: 'Support',
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.help_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: const Text('Help & Support'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => showHelpAndSupport(context),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: const Text('Privacy Policy'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => showPrivacyPolicy(context),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.description_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: const Text('Terms of Service'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => showTermsOfService(context),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // About Section
                SettingsSection(
                  title: 'About',
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: const Text('About Pure Haven Organics'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => showAboutPopupDialog(context),
                    ),
                    ListTile(
                      title: const Text('Version'),
                      trailing: const Text('1.0.0'),
                      enabled: false,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
