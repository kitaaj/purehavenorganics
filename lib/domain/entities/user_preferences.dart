import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default(false) bool darkMode,
    @Default('en_US') String language,
    @Default(true) bool pushNotifications,
    @Default(true) bool dailyTips,
    @Default(true) bool weeklyNewsletter,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}