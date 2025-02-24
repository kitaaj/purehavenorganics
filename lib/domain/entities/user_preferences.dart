import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default(false) bool darkMode,
    @Default('en') String language,
    @Default([]) List<String> favoriteRemedies,
    @Default({}) Map<String, dynamic> notifications,
  }) = _UserPreferences;
}