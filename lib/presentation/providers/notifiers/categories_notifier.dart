import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class CategoriesNotifier extends BaseCacheNotifier<List<HealthCategory>> {
  final RemedyRepository _repository;

  CategoriesNotifier(this._repository) : super(StorageKeys.cachedCategories) {
    loadData();
  }

  @override
  Future<List<HealthCategory>> fetchFromNetwork() {
    return _repository.getCategories();
  }

  Future<void> loadSubcategories(String categoryName) async {
    try {
      state = const AsyncValue.loading();
      final data = await _repository.getDirectSubcategories(categoryName);
      await CacheManager.saveToCache(
        '${StorageKeys.cachedCategories}_$categoryName',
        data,
      );
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      final cached = await CacheManager.getFromCache<List<HealthCategory>>(
        '${StorageKeys.cachedCategories}_$categoryName',
      );
      if (cached != null) {
        state = AsyncValue.data(cached);
      } else {
        state = AsyncValue.error(error, stackTrace);
      }
    }
  }
}
