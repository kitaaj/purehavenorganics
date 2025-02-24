import 'package:rxdart/rxdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/errors/exceptions.dart';
import 'package:purehavenorganics/domain/entities/search_state.dart';
import 'package:purehavenorganics/domain/entities/search_result.dart';
import 'package:purehavenorganics/domain/entities/search_filters.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';

class SearchNotifier extends StateNotifier<AsyncValue<SearchState>> {
  SearchNotifier(this.ref) : super(const AsyncValue.loading()) {
    _initializeSearchStream();
  }

  final Ref ref;
  final _searchController = BehaviorSubject<String>();
  final _filterController = BehaviorSubject<SearchFilters>();

  void _initializeSearchStream() {
    _searchController
        .debounceTime(const Duration(milliseconds: 300))
        .distinct()
        .asyncMap(
          (query) => _performSearch(query),
        ) // Changed from switchMap to asyncMap
        .listen(
          (results) => state = AsyncValue.data(results),
          onError:
              (error) => state = AsyncValue.error(error, StackTrace.current),
        );
  }

  Future<SearchState> _performSearch(String query) async {
    try {
      final filters = _filterController.valueOrNull ?? const SearchFilters();
      final results = await ref
          .read(remedyRepositoryProvider)
          .searchRemedies(query);
      return SearchState(
        query: query,
        results:
            results
                .map(
                  (r) => SearchResult(
                    id: r.remedyId.toString(),
                    title: r.name,
                    type: 'remedy',
                    subtitle: r.scientificName,
                  ),
                )
                .toList(),
        filters: filters,
      );
    } catch (e) {
      throw SearchException(message: 'Failed to perform search: $e');
    }
  }

  void updateSearch(String query) {
    _searchController.add(query);
  }

  void updateFilters(SearchFilters filters) {
    _filterController.add(filters);
  }
}
