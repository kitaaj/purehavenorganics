import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/search/search_notifier.dart';
import 'package:purehavenorganics/core/storage/preferences_service.dart' show PreferencesService;
import 'package:purehavenorganics/domain/entities/app_state.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/search_state.dart';
import 'package:purehavenorganics/domain/entities/user_preferences.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/all_remedies_notifier.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/theme_notifier.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/user_preferences_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

// App State
class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(const AppState.initial());
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((
  ref,
) {
  return AppStateNotifier();
});

// Search
final searchProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<SearchState>>((ref) {
      return SearchNotifier(ref);
    });

// Remedy Catalog
final remedyCatalogProvider =
    StateNotifierProvider<AllRemediesNotifier, AsyncValue<List<Remedy>>>((
      ref,
    ) {
      final repository = ref.watch(remedyRepositoryProvider);
      return AllRemediesNotifier(repository);
    });

// SharedPreferences provider
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  return PreferencesService.instance;
});

// User Preferences
final userPreferencesProvider =
    StateNotifierProvider<UserPreferencesNotifier, UserPreferences>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return UserPreferencesNotifier(prefs);
});

// Theme
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return ThemeNotifier(prefs);
});
