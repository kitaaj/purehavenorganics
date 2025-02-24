import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/search_params.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';

final remedyCatalogProvider =
    StateNotifierProvider<RemedyCatalogNotifier, AsyncValue<List<Remedy>>>((
      ref,
    ) {
      final repository = ref.watch(remedyRepositoryProvider);
      return RemedyCatalogNotifier(repository);
    });

class RemedyCatalogNotifier extends StateNotifier<AsyncValue<List<Remedy>>> {
  final RemedyRepository _repository;
  SearchParams _currentParams = const SearchParams();

  RemedyCatalogNotifier(this._repository) : super(const AsyncValue.loading()) {
    _loadRemedies();
  }

  Future<void> _loadRemedies() async {
    try {
      final remedies = await _repository.getRemedies(params: _currentParams);
      state = AsyncValue.data(remedies);
    } catch (error, stackTrace) {
      'Error: $error\nStackTrace: $stackTrace'.log();
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    await _loadRemedies();
  }

    Future<void> search(String? term) async {
    _currentParams = _currentParams.copyWith(
      searchTerm: term,
      page: 1, // Reset to first page when searching
    );
    await _loadRemedies();
  }

    Future<void> filterByCategory(int? categoryId) async {
    _currentParams = _currentParams.copyWith(
      categoryId: categoryId,
      page: 1, // Reset to first page when filtering
    );
    await _loadRemedies();
  }

  Future<void> loadMore() async {
    if (state is! AsyncData<List<Remedy>>) return;

    try {
      final nextPage = _currentParams.page + 1;
      final moreRemedies = await _repository.getRemedies(
        params: _currentParams.copyWith(page: nextPage),
      );
      final currentRemedies = state.value ?? [];
      state = AsyncValue.data([...currentRemedies, ...moreRemedies]);
      _currentParams = _currentParams.copyWith(page: nextPage);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
