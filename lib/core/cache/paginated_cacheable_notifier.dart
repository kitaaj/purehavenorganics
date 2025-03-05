import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';
import 'package:purehavenorganics/main.dart';

abstract class PaginatedCacheNotifier<T>
    extends StateNotifier<AsyncValue<List<T>>> {
  final String cacheKey;
  final int pageSize;
  bool _hasMore = true;
  int _currentPage = 1;
  bool _isLoading = false;

  PaginatedCacheNotifier({required this.cacheKey, this.pageSize = 20})
    : super(const AsyncValue.loading());

  bool get hasMore => _hasMore;

  Future<List<T>> fetchPage(int page);

  Future<void> loadInitial() async {
    if (_isLoading) return;
    _isLoading = true;
    try {
      //TODO:Remove this delay
      if (kDebugMode) {
        await Future.delayed(const Duration(seconds: 3));
      }
      // Try cache first
      final cached = await CacheManager.getFromCache<List<T>>(cacheKey);
      if (cached != null) {
        state = AsyncValue.data(cached);
        _hasMore = cached.length >= pageSize;
        _currentPage = (cached.length ~/ pageSize) + 1;
        return;
      }

      // If no cache, fetch from network
      final data = await fetchPage(1);
      await CacheManager.saveToCache(cacheKey, data);
      state = AsyncValue.data(data);
      _hasMore = data.length >= pageSize;
    } catch (e, stack) {
      final cached = await CacheManager.getFromCache<List<T>>(cacheKey);
      if (cached != null) {
        state = AsyncValue.data(cached);
      } else {
        state = AsyncValue.error(e, stack);
      }
    } finally {
      _isLoading = false;
    }
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isLoading) return;
    _isLoading = true;

    try {
      final currentState = state;
      if (currentState is AsyncData<List<T>>) {
        final currentItems = currentState.value;
        final moreItems = await fetchPage(_currentPage + 1);

        if (moreItems.isEmpty || moreItems.length < pageSize) {
          _hasMore = false;
        }
        _currentPage++;
        final allItems = [...currentItems, ...moreItems];

        await CacheManager.saveToCache(cacheKey, allItems);
        state = AsyncValue.data(allItems);
      }
    } catch (e) {
      // Handle error
      ('[PaginatedCacheNotifier] Error loading more items: $e').log();
    } finally {
      _isLoading = false;
    }
  }

  Future<void> refresh() async {
    _currentPage = 1;
    _hasMore = true;
    _isLoading = false;
    await CacheManager.clearCacheForKey<T>(
      cacheKey,
    ); //clear cache before refreshing
    await loadInitial();
  }
}
