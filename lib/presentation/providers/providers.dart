import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/domain/entities/category_path.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/remedy_combination.dart';
import 'package:purehavenorganics/domain/entities/remedy_condition.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/remedy_list_notifier.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';

// Base providers
final remedyRepositoryProvider = Provider<RemedyRepository>((ref) {
  final dataSource = ref.watch(supabaseDataSourceProvider);
  return RemedyRepositoryImpl(dataSource);
});

// Search providers
final searchQueryProvider = StateProvider<String>((ref) => '');

final searchSuggestionsProvider = FutureProvider.family<List<SearchSuggestion>, String>(
  (ref, query) async {
    if (query.isEmpty) return [];
    final repository = ref.watch(remedyRepositoryProvider);
    return repository.getSearchSuggestions(query);
  },
);

// Remedy list providers
final remedyListProvider = StateNotifierProvider<RemedyListNotifier, AsyncValue<List<Remedy>>>(
  (ref) => RemedyListNotifier(ref.watch(remedyRepositoryProvider)),
);

// Category providers
final categoryHierarchyProvider = FutureProvider.family<List<CategoryPath>, String>(
  (ref, categoryName) {
    final repository = ref.watch(remedyRepositoryProvider);
    return repository.getCategoryPath(categoryName);
  },
);

// Condition providers
final conditionDetailsProvider = FutureProvider.family<List<RemedyCondition>, String>(
  (ref, remedyName) {
    final repository = ref.watch(remedyRepositoryProvider);
    return repository.getRemedyConditions(remedyName);
  },
);

// Featured remedies provider
final featuredRemediesProvider = FutureProvider<List<Remedy>>(
  (ref) {
    final repository = ref.watch(remedyRepositoryProvider);
    return repository.getFeaturedRemedies();
  },
);

// Remedy combinations provider
final remedyCombinationsProvider = FutureProvider.family<List<RemedyCombination>, String>(
  (ref, remedyName) {
    final repository = ref.watch(remedyRepositoryProvider);
    return repository.getRemedyCombinations(remedyName: remedyName);
  },
);