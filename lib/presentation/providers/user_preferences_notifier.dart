import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/user_preferences.dart';

class UserPreferencesNotifier extends StateNotifier<UserPreferences> {
  UserPreferencesNotifier() : super(const UserPreferences());

  void toggleDarkMode() {
    state = state.copyWith(darkMode: !state.darkMode);
  }

  void setLanguage(String language) {
    state = state.copyWith(language: language);
  }

  void toggleFavorite(String remedyId) {
    final favorites = List<String>.from(state.favoriteRemedies);
    if (favorites.contains(remedyId)) {
      favorites.remove(remedyId);
    } else {
      favorites.add(remedyId);
    }
    state = state.copyWith(favoriteRemedies: favorites);
  }
}