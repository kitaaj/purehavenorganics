import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class ConditionsNotifier extends StateNotifier<AsyncValue<List<Condition>>> {
  final RemedyRepository _repository;

  ConditionsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadConditions();
  }

  Future<void> loadConditions() async {
    try {
      state = const AsyncValue.loading();
      final conditions = await _repository.getConditions();
      state = AsyncValue.data(conditions);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
