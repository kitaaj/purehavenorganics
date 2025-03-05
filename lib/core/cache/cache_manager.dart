// lib/core/cache/cache_manager.dart
// ignore_for_file: unnecessary_null_comparison

import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/core/storage/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static const Duration defaultValidityDuration = LocalStorageService.defaultValidityDuration;

  static Future<void> init() => LocalStorageService.init();

  static Box _getAppropriateBox<T>() {
    // Get the base type (without List wrapper)
    final type = T.toString().replaceAll('List<', '').replaceAll('>', '');
    
    switch (type) {
      case 'Remedy':
        return LocalStorageService.remediesBox;
      
      case 'Condition':
        return LocalStorageService.conditionsBox;
      
      case 'SavedItems':
        return LocalStorageService.savedItemsBox;
      
      case 'SearchSuggestion':
        return LocalStorageService.searchSuggestionsBox;
      
      case 'HealthCategory':
        return LocalStorageService.healthCategoriesBox;
      
      case 'ConditionSearchResult':
        return LocalStorageService.conditionSearchResultsBox;
      
      case 'RelatedCondition':
        return LocalStorageService.relatedConditionsBox;
      
      case 'RemediesForCondition':
        return LocalStorageService.remediesForConditionsBox;
      
      case 'RemedyByHealthCategory':
        return LocalStorageService.remediesByHealthCategoryBox;
      
      case 'FeaturedRemedy':
        return LocalStorageService.featuredRemediesBox;
      
      case 'RemediesByCategory':
        return LocalStorageService.remediesByCategoryBox;
      
      case 'RemedyCategory':
        return LocalStorageService.remedyCategoriesBox;
      
      default:
        throw UnsupportedError('No box available for type $T');
    }
  }

  static Future<void> saveToCache<T>(String key, T data) async {
    final box = _getAppropriateBox<T>();
    await box.clear();
    
    if (data is List) {
      for (final item in data) {
        await box.add(item);
      }
    } else {
      await box.put(key, data);
    }
    
    await SharedPreferences.getInstance().then(
      (prefs) => prefs.setInt(
        '${key}_timestamp',
        DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  static Future<T?> getFromCache<T>(String key, {bool ignoreExpiry = false}) async {
    final box = _getAppropriateBox<T>();
    if (box.isEmpty) return null;

    final lastUpdate = await SharedPreferences.getInstance().then(
      (prefs) => prefs.getInt('${key}_timestamp') ?? 0,
    );
    
    if (lastUpdate == null) return null;

    if (ignoreExpiry || DateTime.now().millisecondsSinceEpoch - lastUpdate < 
        defaultValidityDuration.inMilliseconds) {
      if (T.toString().startsWith('List<')) {
        // For List types, return the entire box values as a List
        final items = box.values.toList();
        return items as T;
      }
      // For single items, return the specific key
      return box.get(key) as T?;
    }

    return null;
  }

  static Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    final timestampKeys = prefs.getKeys().where((key) => key.endsWith('_timestamp'));
    for (final key in timestampKeys) {
      await prefs.remove(key);
    }

    await Future.wait([
      LocalStorageService.remediesBox.clear(),
      LocalStorageService.conditionsBox.clear(),
      LocalStorageService.savedItemsBox.clear(),
      LocalStorageService.searchSuggestionsBox.clear(),
      LocalStorageService.healthCategoriesBox.clear(),
      LocalStorageService.conditionSearchResultsBox.clear(),
      LocalStorageService.relatedConditionsBox.clear(),
      LocalStorageService.remediesForConditionsBox.clear(),
      LocalStorageService.remediesByHealthCategoryBox.clear(),
      LocalStorageService.featuredRemediesBox.clear(),
      LocalStorageService.remediesByCategoryBox.clear(),
      LocalStorageService.remedyCategoriesBox.clear(),
    ]);
  }

  static Future<bool> hasValidCache<T>(String key) async {
    final box = _getAppropriateBox<T>();
    if (box.isEmpty) return false;

    final lastUpdate = await SharedPreferences.getInstance().then(
      (prefs) => prefs.getInt('${key}_timestamp') ?? 0,
    );
    if (lastUpdate == null) return false;

    return DateTime.now().millisecondsSinceEpoch - lastUpdate <
        defaultValidityDuration.inMilliseconds;
  }
}
