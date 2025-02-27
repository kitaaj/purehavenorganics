import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/core/search/search_notifier.dart';
import 'package:purehavenorganics/domain/entities/search_state.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/data/datasources/supabase/supabase_remedy_data_source.dart';
import 'package:purehavenorganics/presentation/providers/notifiers/remedy_list_notifier.dart';

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
  final dataSource = ref.watch(supabaseDataSourceProvider);
  return dataSource.getRemedyCategories();
});

final remedyListProvider =
    StateNotifierProvider<RemedyListNotifier, AsyncValue<List<Remedy>>>((ref) {
      final repository = ref.watch(remedyRepositoryProvider);
      return RemedyListNotifier(repository);
    });

final searchResultsProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<SearchState>>((ref) {
      return SearchNotifier(ref);
    });
final isLoadingMoreProvider = StateProvider<bool>((ref) => false);
