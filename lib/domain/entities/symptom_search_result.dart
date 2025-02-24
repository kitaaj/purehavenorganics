import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom_search_result.freezed.dart';
part 'symptom_search_result.g.dart';

@freezed
class SymptomSearchResult with _$SymptomSearchResult {
  const factory SymptomSearchResult({
    required String conditionName,
    required List<String> matchingSymptoms,
    required int matchCount,
    required Map<String, dynamic> recommendedRemedies,
  }) = _SymptomSearchResult;

  factory SymptomSearchResult.fromJson(Map<String, dynamic> json) =>
      _$SymptomSearchResultFromJson(json);
}