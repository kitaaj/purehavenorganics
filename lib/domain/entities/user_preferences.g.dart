// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$UserPreferencesImpl(
  darkMode: json['darkMode'] as bool? ?? false,
  language: json['language'] as String? ?? 'en_US',
  pushNotifications: json['pushNotifications'] as bool? ?? true,
  dailyTips: json['dailyTips'] as bool? ?? true,
  weeklyNewsletter: json['weeklyNewsletter'] as bool? ?? true,
);

Map<String, dynamic> _$$UserPreferencesImplToJson(
  _$UserPreferencesImpl instance,
) => <String, dynamic>{
  'darkMode': instance.darkMode,
  'language': instance.language,
  'pushNotifications': instance.pushNotifications,
  'dailyTips': instance.dailyTips,
  'weeklyNewsletter': instance.weeklyNewsletter,
};
