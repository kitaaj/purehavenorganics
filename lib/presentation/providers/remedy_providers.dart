// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/core/search/search_notifier.dart';
import 'package:purehavenorganics/domain/entities/search_state.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/data/datasources/supabase/supabase_remedy_data_source.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/all_remedies_notifier.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/single_remedy_notifier.dart';
// import 'package:purehavenorganics/presentation/providers/notifiers/remedy_list_notifier.dart';

final supabaseDataSourceProvider = Provider<SupabaseRemedyDataSource>((ref) {
  return SupabaseRemedyDataSource();
});

final remedyRepositoryProvider = Provider<RemedyRepository>((ref) {
  final dataSource = ref.watch(supabaseDataSourceProvider);
  return RemedyRepositoryImpl(dataSource);
});

final remedyCategoriesProvider = FutureProvider<List<RemedyCategory>>((
  ref,
) async {
  
      //TODO:Remove this delay
       if (kDebugMode) {
    await Future.delayed(const Duration(seconds: 3));
  }
  final dataSource = ref.watch(supabaseDataSourceProvider);
  return dataSource.getRemedyCategories();
});


final categoryNameProvider = Provider.family<String, int>((ref, categoryId) {
  final categoriesAsync = ref.watch(remedyCategoriesProvider);

  return categoriesAsync.when(
    data: (categories) {
      final category = categories.firstWhere(
        (c) => c.categoryId == categoryId,
        orElse: () => RemedyCategory(categoryId: -1, categoryName: 'Unknown'),
      );
      return category.categoryName;
    },
    error: (e, _) => 'Error: $e',
    loading: () => 'Loading...',
  );
});
// final remedyListProvider =
//     StateNotifierProvider<RemedyListNotifier, AsyncValue<List<Remedy>>>((ref) {
//       final repository = ref.watch(remedyRepositoryProvider);
//       return RemedyListNotifier(repository);
//     });

final selectedRemedyProvider = StateNotifierProvider.family<SingleRemedyNotifier, AsyncValue<Remedy>, String>(
  (ref, remedyName) {
    final repository = ref.watch(remedyRepositoryProvider);
    return SingleRemedyNotifier(repository)..fetchRemedy(remedyName, isName: true);
  },
);

// 2. Keep the allRemediesProvider as is
final allRemediesProvider = StateNotifierProvider<AllRemediesNotifier, AsyncValue<List<Remedy>>>((ref) {
  return AllRemediesNotifier(ref.watch(remedyRepositoryProvider));
});

// 3. Add a new provider that combines both approaches
final remedySearchProvider = Provider.family<AsyncValue<Remedy>, String>((ref, remedyName) {
  // First, try to find in the all remedies list
  final allRemediesState = ref.watch(allRemediesProvider);
  
  return allRemediesState.when(
    data: (remedies) {
      try {
        final match = remedies.firstWhere(
          (remedy) => remedy.name.toLowerCase() == remedyName.toLowerCase(),
        );
        return AsyncValue.data(match);
      } catch (_) {
        // If not found in the list and there are more items, load more
        if (ref.read(allRemediesProvider.notifier).hasMore) {
          ref.read(allRemediesProvider.notifier).loadMore();
        }
        
        // Meanwhile, fetch the specific remedy
        return ref.watch(selectedRemedyProvider(remedyName));
      }
    },
    loading: () => ref.watch(selectedRemedyProvider(remedyName)),
    error: (_, __) => ref.watch(selectedRemedyProvider(remedyName)),
  );
});

final searchResultsProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<SearchState>>((ref) {
      return SearchNotifier(ref);
    });
final isLoadingMoreProvider = StateProvider<bool>((ref) => false);
