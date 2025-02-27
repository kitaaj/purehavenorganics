import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/saved_items.dart';

final savedItemsProvider =
    StateNotifierProvider<SavedItemsNotifier, AsyncValue<SavedItems>>((ref) {
      return SavedItemsNotifier();
    });

class SavedItemsNotifier extends StateNotifier<AsyncValue<SavedItems>> {
  SavedItemsNotifier() : super(const AsyncValue.data(SavedItems()));

  void toggleRemedy(Remedy remedy) {
    state.whenData((items) {
      final remedies = List<Remedy>.from(items.remedies);
      if (remedies.any((r) => r.remedyId == remedy.remedyId)) {
        remedies.removeWhere((r) => r.remedyId == remedy.remedyId);
      } else {
        remedies.add(remedy);
      }
      state = AsyncValue.data(items.copyWith(remedies: remedies));
    });
  }

  void toggleCondition(Condition condition) {
    state.whenData((items) {
      final conditions = List<Condition>.from(items.conditions);
      if (conditions.any((c) => c.conditionId == condition.conditionId)) {
        conditions.removeWhere((c) => c.conditionId == condition.conditionId);
      } else {
        conditions.add(condition);
      }
      state = AsyncValue.data(items.copyWith(conditions: conditions));
    });
  }
}
