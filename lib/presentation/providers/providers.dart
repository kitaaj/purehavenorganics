import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';
import 'package:purehavenorganics/core/errors/exceptions.dart';
import 'package:purehavenorganics/core/storage/preferences_service.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
// import 'package:purehavenorganics/domain/entities/remedy.dart';
// import 'package:purehavenorganics/domain/entities/category.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/category_path.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy_details.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/domain/entities/remedy_combination.dart';
import 'package:purehavenorganics/domain/entities/user_preferences.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/categories_notifier.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/condition_search_notifier.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/featured_remedies_notifier.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/conditions_notifier.dart';
// import 'package:purehavenorganics/presentation/providers/notifiers/remedy_list_notifier.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/user_preferences_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Base providers
final remedyRepositoryProvider = Provider<RemedyRepository>((ref) {
  final dataSource = ref.watch(supabaseDataSourceProvider);
  return RemedyRepositoryImpl(dataSource);
});

// Search providers
final searchQueryProvider = StateProvider<String>((ref) => '');

final searchSuggestionsProvider =
    FutureProvider.family<List<SearchSuggestion>, String>((ref, query) async {
      if (query.isEmpty) return [];
      final repository = ref.watch(remedyRepositoryProvider);
      return repository.getSearchSuggestions(query);
    });

// // Remedy list providers
// final remedyListProvider =
//     StateNotifierProvider<RemedyListNotifier, AsyncValue<List<Remedy>>>(
//       (ref) => RemedyListNotifier(ref.watch(remedyRepositoryProvider)),
//     );

// Category providers
final categoryHierarchyProvider =
    FutureProvider.family<List<CategoryPath>, String>((ref, categoryName) {
      final repository = ref.watch(remedyRepositoryProvider);
      return repository.getCategoryPath(categoryName);
    });

// Condition providers
final conditionDetailsProvider =
    FutureProvider.family<List<RemedyCondition>, String>((ref, remedyName) {
      final repository = ref.watch(remedyRepositoryProvider);
      return repository.getRemedyConditions(remedyName);
    });

// Featured remedies provider
final featuredRemediesProvider = StateNotifierProvider<FeaturedRemediesNotifier, AsyncValue<List<FeaturedRemedy>>>((ref) {
  
  return FeaturedRemediesNotifier(ref.watch(remedyRepositoryProvider));
});

final relatedConditionsProvider =
    FutureProvider.family<List<RelatedCondition>, String>((
      ref,
      conditionName,
    ) async {
      return ref
          .watch(remedyRepositoryProvider)
          .getRelatedConditions(conditionName);
    });

final conditionRemediesProvider =
    FutureProvider.family<List<RemediesByCategory>, String>((
      ref,
      conditionName,
    ) async {
      final remedies = await ref
          .watch(remedyRepositoryProvider)
          .getRemediesByCategory(conditionName);
      return remedies;
    });

// Remedy combinations provider
final remedyCombinationsProvider =
    FutureProvider.family<List<RemedyCombination>, String>((ref, remedyName) {
      final repository = ref.watch(remedyRepositoryProvider);
      return repository.getRemedyCombinations(remedyName: remedyName);
    });

final categoriesProvider =
    StateNotifierProvider<CategoriesNotifier, AsyncValue<List<HealthCategory>>>(
      (ref) {
        return CategoriesNotifier(ref.watch(remedyRepositoryProvider));
      },
    );

final conditionsProvider =
    StateNotifierProvider<ConditionsNotifier, AsyncValue<List<Condition>>>((
      ref,
    ) {
      return ConditionsNotifier(ref.watch(remedyRepositoryProvider));
    });

    final selectedConditionProvider = Provider.family<Condition?, String>((
  ref,
  conditionName,
) {
  final conditionsState = ref.watch(conditionsProvider);
  return conditionsState.when(
    data: (conditions) {
      try {
        Condition? match = conditions.firstWhere(
          (condition) => condition.name.toLowerCase() == conditionName.toLowerCase(),
        );
        // if (match == null && ref.read(conditionsProvider.notifier).hasMore) {
        //   ref.read(conditionsProvider.notifier).loadMore();
        // }
        return match;
      } catch (e) {
        return null;
      }
    },
    loading: () {
      return null;
    },
    error: (error, _) {
      return null;
    },
  );
});

final remediesForConditionProvider =
    FutureProvider.family<List<RemediesForCondition>, String>((
      ref,
      conditionName,
    ) {
      return ref
          .watch(remedyRepositoryProvider)
          .getRemediesForCondition(
            conditionName: conditionName,
            minEffectiveness: 3,
          );
    });

final remedyCategoriesProvider = FutureProvider<List<RemedyCategory>>((
  ref,
) async {
  // Try to get from cache first
  final cached = await CacheManager.getFromCache<List<RemedyCategory>>(
    StorageKeys.cachedRemedies,
  );

  if (cached != null) return cached;

  // If not in cache or expired, fetch from network
  final dataSource = ref.watch(supabaseDataSourceProvider);
  final categories = await dataSource.getRemedyCategories();

  // Save to cache
  await CacheManager.saveToCache(StorageKeys.cachedRemedies, categories);

  return categories;
});

final conditionSearchProvider = StateNotifierProvider<
  ConditionSearchNotifier,
  AsyncValue<List<ConditionSearchResult>>
>((ref) {
  return ConditionSearchNotifier(ref.watch(remedyRepositoryProvider));
});

final categoryRemediesProvider = FutureProvider.family<
  List<RemediesByCategory>,
  String
>((ref, category) async {
  return ref.watch(remedyRepositoryProvider).getRemediesByCategory(category);
});

final healthCategoryRemediesProvider = FutureProvider.family<
    List<RemedyByHealthCategory>,
    int
>((ref, categoryId) async {
  final cacheKey = '${StorageKeys.cachedRemedies}_$categoryId';
  
  try {
    // Try cache first
    final cached = await CacheManager.getFromCache<List<RemedyByHealthCategory>>(
      cacheKey,
    );
    if (cached != null) return cached;

    // Fetch from network
    final results = await ref
        .watch(remedyRepositoryProvider)
        .getRemediesByHealthCategory(categoryId, includeSubcategories: true);
    
    // Save to cache
    await CacheManager.saveToCache(cacheKey, results);
    return results;
  } catch (e) {
    // If offline, try to return cached data even if expired
    final expired = await CacheManager.getFromCache<List<RemedyByHealthCategory>>(
      cacheKey,
      ignoreExpiry: true,
    );
    if (expired != null) return expired;
    
    throw RemedyException('Failed to load remedies for category: $e');
  }
});

final remedyDetailsProvider = FutureProvider.family<RemedyDetails, String>((
  ref,
  remedyName,
) async {
  return ref.watch(remedyRepositoryProvider).getRemedyDetails(remedyName);
});

final isSavedRemedyProvider = Provider.family<bool, int>((ref, remedyId) {
  final savedItems = ref.watch(savedItemsProvider);
  return savedItems.whenOrNull(
        data: (items) => items.remedies.any((r) => r.remedyId == remedyId),
      ) ??
      false;
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  return PreferencesService.instance;
});

final userPreferencesProvider =
    StateNotifierProvider<UserPreferencesNotifier, UserPreferences>((ref) {
      final prefs = ref.watch(sharedPreferencesProvider);
      return UserPreferencesNotifier(prefs);
    });
