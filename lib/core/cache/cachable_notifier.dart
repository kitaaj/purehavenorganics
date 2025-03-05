import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';

abstract class BaseCacheNotifier<T> extends StateNotifier<AsyncValue<T>> {
  final String cacheKey;

  BaseCacheNotifier(this.cacheKey) : super(const AsyncValue.loading());

  Future<T> fetchFromNetwork();

  Future<void> loadData() async {
    try {

      //TODO:Remove this delay
       if (kDebugMode) {
    await Future.delayed(const Duration(seconds: 3));
  }
      // Try cache first
      final cached = await CacheManager.getFromCache<T>(cacheKey);
      if (cached != null) {
        state = AsyncValue.data(cached);
        return;
      }

      // If no cache, fetch from network
      state = const AsyncValue.loading();
      final data = await fetchFromNetwork();
      await CacheManager.saveToCache(cacheKey, data);
      state = AsyncValue.data(data);
    } catch (e, stack) {
      // On error, try to get cached data even if expired
      final cached = await CacheManager.getFromCache<T>(cacheKey);
      if (cached != null) {
        state = AsyncValue.data(cached);
      } else {
        state = AsyncValue.error(e, stack);
      }
    }
  }
}