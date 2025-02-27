import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/search_params.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class RemedyListNotifier extends StateNotifier<AsyncValue<List<Remedy>>> {
  final RemedyRepository _repository;
  SearchParams _currentParams = const SearchParams();

  RemedyListNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadInitial();
  }

  Future<void> loadInitial() async {
    try {
      final remedies = await _repository.getRemedies(params: _currentParams);
      state = AsyncValue.data(remedies);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> loadMore() async {
    if (state is! AsyncData<List<Remedy>>) return;

    final currentData = state.value ?? [];
    try {
      final newParams = _currentParams.copyWith(page: currentData.length);
      final moreRemedies = await _repository.getRemedies(params: newParams);
      state = AsyncValue.data([...currentData, ...moreRemedies]);
      _currentParams = newParams;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    _currentParams = const SearchParams();
    await loadInitial();
  }

  Future<void> updateSearch(SearchParams params) async {
    _currentParams = params;
    await loadInitial();
  }
}
