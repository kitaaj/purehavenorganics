import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/saved_items.dart';

final savedItemsProvider =
    StateNotifierProvider<SavedItemsNotifier, AsyncValue<SavedItems>>((ref) {
      return SavedItemsNotifier();
    });

class SavedItemsNotifier extends StateNotifier<AsyncValue<SavedItems>> {
  late final Box<SavedItems> _savedItemsBox;
   SavedItemsNotifier() : super(const AsyncValue.loading()) {
    _init();
  }

  Future<void> _init() async {
    try {
      _savedItemsBox = Hive.box('saved_items');
      final savedItems = _savedItemsBox.get('saved_items') ?? SavedItems();
      state = AsyncValue.data(savedItems);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> toggleRemedy(Remedy remedy) async{
    state.whenData((items) async{
      final remedies = List<Remedy>.from(items.remedies);
      if (remedies.any((r) => r.remedyId == remedy.remedyId)) {
        remedies.removeWhere((r) => r.remedyId == remedy.remedyId);
      } else {
        remedies.add(remedy);
      }
      final newSavedItems = items.copyWith(remedies: remedies);
      await _savedItemsBox.put('saved_items', newSavedItems);
      state = AsyncValue.data(newSavedItems);
    });
  }

  Future<void> toggleCondition(Condition condition) async{
    state.whenData((items) async{
      final conditions = List<Condition>.from(items.conditions);
      if (conditions.any((c) => c.conditionId == condition.conditionId)) {
        conditions.removeWhere((c) => c.conditionId == condition.conditionId);
      } else {
        conditions.add(condition);
      }
      final newSavedItems = items.copyWith(conditions: conditions);
      await _savedItemsBox.put('saved_items', newSavedItems);
      state = AsyncValue.data(newSavedItems);
    });
  }
}
