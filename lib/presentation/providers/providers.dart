import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
// import 'package:purehavenorganics/domain/entities/category.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/category_path.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy_details.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/domain/entities/remedy_combination.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/presentation/providers/categories_notifier.dart';
import 'package:purehavenorganics/presentation/providers/condition_search_notifier.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/presentation/providers/conditions_notifier.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/remedy_list_notifier.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';

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

// Remedy list providers
final remedyListProvider =
    StateNotifierProvider<RemedyListNotifier, AsyncValue<List<Remedy>>>(
      (ref) => RemedyListNotifier(ref.watch(remedyRepositoryProvider)),
    );

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
final featuredRemediesProvider = FutureProvider<List<FeaturedRemedy>>((ref) {
  final repository = ref.watch(remedyRepositoryProvider);
  return repository.getFeaturedRemedies();
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

final conditionRemediesProvider = FutureProvider.family<List<RemediesByCategory>, String>((
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

final remediesForConditionProvider =
    FutureProvider.family<List<RemediesForCondition>, String>((ref, conditionName) {
      return ref
          .watch(remedyRepositoryProvider)
          .getRemediesForCondition(
            conditionName: conditionName,
            minEffectiveness: 3,
          );
    });

    final remedyCategoriesProvider = FutureProvider<List<RemedyCategory>>((ref) {
  return ref.watch(remedyRepositoryProvider).getRemedyCategories();
});

final conditionSearchProvider = StateNotifierProvider<ConditionSearchNotifier, AsyncValue<List<ConditionSearchResult>>>((ref) {
  return ConditionSearchNotifier(ref.watch(remedyRepositoryProvider));
});

final categoryRemediesProvider = FutureProvider.family<List<RemediesByCategory>, String>(
  (ref, category) async {
    return ref.watch(remedyRepositoryProvider).getRemediesByCategory(category);
  },
);

final remedyDetailsProvider = FutureProvider.family<RemedyDetails, String>(
  (ref, remedyName) async {
        return ref.watch(remedyRepositoryProvider).getRemedyDetails(remedyName);

  },
);

final isSavedRemedyProvider = Provider.family<bool, int>((ref, remedyId) {
  final savedItems = ref.watch(savedItemsProvider);
  return savedItems.whenOrNull(
        data: (items) => items.remedies.any((r) => r.remedyId == remedyId),
      ) ??
      false;
});
