class CacheManager {
  static final _instance = CacheManager._();
  factory CacheManager() => _instance;
  CacheManager._();
  final _cache = <String, CacheEntry>{};

  Future<T> get<T>({
    required String key,
    required Future<T> Function() fetchData,
    Duration maxAge = const Duration(minutes: 5),
  }) async {
    final entry = _cache[key];
    if (entry != null && !entry.isExpired) {
      return entry.data as T;
    }

    final data = await fetchData();
    _cache[key] = CacheEntry(
      data: data,
      timestamp: DateTime.now(),
      maxAge: maxAge,
    );
    return data;
  }

  void invalidate(String key) {
    _cache.remove(key);
  }

  void invalidateAll() {
    _cache.clear();
  }
}

class CacheEntry {
  final dynamic data;
  final DateTime timestamp;
  final Duration maxAge;

  CacheEntry({
    required this.data,
    required this.timestamp,
    required this.maxAge,
  });

  bool get isExpired => DateTime.now().difference(timestamp) > maxAge;
}
