import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class ConditionSearchNotifier extends BaseCacheNotifier<List<ConditionSearchResult>> {
  final RemedyRepository _repository;
  String? _searchTerm;
  int? _minRemedies;
  double? _minEffectiveness;
  int _limit = 10;
  int _offset = 0;

  ConditionSearchNotifier(this._repository)
      : super(StorageKeys.cachedConditionSearch);

  @override
  Future<List<ConditionSearchResult>> fetchFromNetwork() {
    return _repository.searchConditions(
      searchTerm: _searchTerm,
      minRemedies: _minRemedies,
      minEffectiveness: _minEffectiveness,
      limit: _limit,
      offset: _offset,
    );
  }

  Future<void> searchConditions({
    String? searchTerm,
    int? minRemedies,
    double? minEffectiveness,
    int limit = 10,
    int offset = 0,
  }) async {
    _searchTerm = searchTerm;
    _minRemedies = minRemedies;
    _minEffectiveness = minEffectiveness;
    _limit = limit;
    _offset = offset;
    
    await loadData();
  }

  void clearSearch() {
    _searchTerm = null;
    _minRemedies = null;
    _minEffectiveness = null;
    _limit = 10;
    _offset = 0;
    state = const AsyncValue.data([]);
  }
}