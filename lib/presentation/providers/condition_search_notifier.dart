import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class ConditionSearchNotifier extends StateNotifier<AsyncValue<List<ConditionSearchResult>>> {
  final RemedyRepository _repository;

  ConditionSearchNotifier(this._repository) : super(const AsyncValue.data([]));

  Future<void> searchConditions({
    String? searchTerm,
    int? minRemedies,
    double? minEffectiveness,
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      state = const AsyncValue.loading();
      final results = await _repository.searchConditions(
        searchTerm: searchTerm,
        minRemedies: minRemedies,
        minEffectiveness: minEffectiveness,
        limit: limit,
        offset: offset,
      );
      state = AsyncValue.data(results);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  void clearSearch() {
    state = const AsyncValue.data([]);
  }
}