import 'package:purehavenorganics/core/cache/paginated_cacheable_notifier.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/search_params.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class AllRemediesNotifier extends PaginatedCacheNotifier<Remedy> {
  final RemedyRepository _repository;
  SearchParams _searchParams;

  AllRemediesNotifier(this._repository)
      : _searchParams = const SearchParams(limit: 20, page: 1),
        super(
          cacheKey: StorageKeys.cachedRemedies,
          pageSize: 20,
        ) {
          
    loadInitial();
  }

  @override
  Future<List<Remedy>> fetchPage(int page) {
    final params = _searchParams.copyWith(page: page);
    return _repository.getRemedies(params: params);
  }

  Future<void> updateSearch(SearchParams params) async {
    _searchParams = params;
    await refresh();
  }
}
