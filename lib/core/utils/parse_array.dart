  List<T> parseArray<T>(dynamic value) {
    if (value == null) return [];
    if (value is List) return List<T>.from(value);
    return [];
  }