import 'dart:convert';

List<T> parseArray<T>(dynamic value) {
  if (value == null) return [];
  if (value is List) return List<T>.from(value);
  if (value is String) {
    try {
      return List<T>.from(json.decode(value));
    } catch (_) {
      return [];
    }
  }
  return [];
}