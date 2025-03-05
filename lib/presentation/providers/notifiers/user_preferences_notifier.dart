import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesNotifier extends StateNotifier<UserPreferences> {
  static const String _key = 'user_preferences';
  final SharedPreferences _prefs;

  UserPreferencesNotifier(this._prefs) : super(_loadPreferences(_prefs));

  static UserPreferences _loadPreferences(SharedPreferences prefs) {
    final json = prefs.getString(_key);
    if (json != null) {
      try {
        return UserPreferences.fromJson(jsonDecode(json));
      } catch (_) {}
    }
    return const UserPreferences();
  }

  Future<void> _savePreferences() async {
    await _prefs.setString(_key, jsonEncode(state.toJson()));
  }

  Future<void> toggleDarkMode() async {
    state = state.copyWith(darkMode: !state.darkMode);
    await _savePreferences();
  }

  Future<void> setLanguage(String language) async {
    state = state.copyWith(language: language);
    await _savePreferences();
  }

  Future<void> setPushNotifications(bool value) async {
    state = state.copyWith(pushNotifications: value);
    await _savePreferences();
  }

  Future<void> setDailyTips(bool value) async {
    state = state.copyWith(dailyTips: value);
    await _savePreferences();
  }

  Future<void> setWeeklyNewsletter(bool value) async {
    state = state.copyWith(weeklyNewsletter: value);
    await _savePreferences();
  }
}
