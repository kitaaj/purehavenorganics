import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';

final symptomSearchProvider = StateNotifierProvider<SymptomSearchNotifier, AsyncValue<List<SymptomSearchResult>>>((ref) {
  return SymptomSearchNotifier(ref.watch(remedyRepositoryProvider));
});

class SymptomSearchNotifier extends StateNotifier<AsyncValue<List<SymptomSearchResult>>> {
  final RemedyRepository _repository;

  SymptomSearchNotifier(this._repository) : super(const AsyncValue.data([]));

  Future<void> searchBySymptoms(List<String> symptoms) async {
    try {
      state = const AsyncValue.loading();
      final results = await _repository.searchBySymptoms(
        symptoms: symptoms,
        matchThreshold: 1,
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