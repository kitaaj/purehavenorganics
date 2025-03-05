import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class SingleRemedyNotifier extends StateNotifier<AsyncValue<Remedy>> {
  final RemedyRepository _repository;
  
  SingleRemedyNotifier(this._repository) : super(const AsyncValue.loading());

  Future<void> fetchRemedy(String identifier, {bool isName = false}) async {
    try {
      state = const AsyncValue.loading();
      
      // Generate cache key based on identifier type
      final cacheKey = isName ? 'remedy_name_$identifier' : 'remedy_id_$identifier';
      
      // Try to get from cache first
      final cached = await CacheManager.getFromCache<Remedy>(cacheKey);
      if (cached != null) {
        state = AsyncValue.data(cached);
        return;
      }

      // If not in cache, fetch from network
      final remedy = isName 
          ? await _repository.getRemedyByName(identifier)
          : await _repository.getRemedyById(identifier);
          
      // Cache the result
      await CacheManager.saveToCache(cacheKey, remedy);
      
      state = AsyncValue.data(remedy);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> refresh(String identifier, {bool isName = false}) async {
    try {
      final remedy = isName 
          ? await _repository.getRemedyByName(identifier)
          : await _repository.getRemedyById(identifier);
          
      final cacheKey = isName ? 'remedy_name_$identifier' : 'remedy_id_$identifier';
      await CacheManager.saveToCache(cacheKey, remedy);
      
      state = AsyncValue.data(remedy);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}