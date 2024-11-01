class MemoryCache {
  static final MemoryCache instance = MemoryCache._internal();
  final Map<String, _CacheEntry> _cache = {};
  static const Duration defaultMaxAge = Duration(minutes: 5);

  factory MemoryCache() {
    return instance;
  }

  MemoryCache._internal();

  T? get<T>(String key, {Duration maxAge = defaultMaxAge}) {
    final entry = _cache[key];
    if (entry != null && !_isExpired(entry, key, maxAge)) {
      return entry.value as T?;
    }
    return null;
  }

  void set<T>(String key, T value) {
    _cache[key] = _CacheEntry(value, DateTime.now());
  }

  void clear(String key) {
    _cache.remove(key);
  }

// TODO: Implement a more generic way to clear the cache of all keys
  bool _isExpired(_CacheEntry entry, String key, Duration maxAge) {
    final now = DateTime.now();
    if (now.difference(entry.timestamp) > maxAge) {
      freeUpMemoryKey(key);
      return true;
    }
    return false;
  }

  void freeUpMemoryKey(String key) {
    _cache.remove(key);
  }
}

class _CacheEntry {
  final dynamic value;
  final DateTime timestamp;

  _CacheEntry(this.value, this.timestamp);
}
