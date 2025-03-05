import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'search_suggestion.freezed.dart';
part 'search_suggestion.g.dart';

@freezed
@HiveType(typeId: 36)
class SearchSuggestion with _$SearchSuggestion {
  const factory SearchSuggestion({
    @HiveField(0)
    required String suggestion,
    @HiveField(1)
    required String suggestionType,
    @HiveField(2)
    String? category,
    @HiveField(3)
    required double relevanceScore,
    @HiveField(4)
    Map<String, dynamic>? additionalInfo,
  }) = _SearchSuggestion;

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionFromJson(json);
}