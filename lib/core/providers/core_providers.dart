import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/search/search_notifier.dart';
import 'package:purehavenorganics/domain/entities/app_state.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/search_state.dart';
import 'package:purehavenorganics/domain/entities/user_preferences.dart';
import 'package:purehavenorganics/presentation/providers/remedy_catalog_notifier.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart'; 
import 'package:purehavenorganics/presentation/providers/theme_notifier.dart';
import 'package:purehavenorganics/presentation/providers/user_preferences_notifier.dart';

// App State
class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(const AppState.initial());
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  return AppStateNotifier();
});

// Search
final searchProvider = StateNotifierProvider<SearchNotifier, AsyncValue<SearchState>>((ref) {
  return SearchNotifier(ref);
});

// Remedy Catalog
final remedyCatalogProvider = StateNotifierProvider<RemedyCatalogNotifier, AsyncValue<List<Remedy>>>((ref) {
  final repository = ref.watch(remedyRepositoryProvider);
  return RemedyCatalogNotifier(repository);
});

// User Preferences
final userPreferencesProvider = StateNotifierProvider<UserPreferencesNotifier, UserPreferences>((ref) {
  return UserPreferencesNotifier();
});

// Theme
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});
