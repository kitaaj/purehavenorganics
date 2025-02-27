import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class CategoriesNotifier extends StateNotifier<AsyncValue<List<HealthCategory>>> {
  final RemedyRepository _repository;

  CategoriesNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadCategories();
  }

  Future<void> loadCategories() async {
    try {
      state = const AsyncValue.loading();
      final categories = await _repository.getCategories();
      state = AsyncValue.data(categories);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

    Future<void> loadSubcategories(String categoryName) async {
    try {
      state = const AsyncValue.loading();
      final categories = await _repository.getDirectSubcategories(categoryName);
      state = AsyncValue.data(categories);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

}