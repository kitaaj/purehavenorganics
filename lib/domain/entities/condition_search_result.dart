import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition_search_result.freezed.dart';
part 'condition_search_result.g.dart';

@freezed
class ConditionSearchResult with _$ConditionSearchResult {
  const factory ConditionSearchResult({
    required String conditionName,
    String? conditionDescription,
    required List<String> symptoms,
    required int remedyCount,
    required int avgEffectiveness,
    required Map<String, dynamic> topRemedies,
  }) = _ConditionSearchResult;

  factory ConditionSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ConditionSearchResultFromJson(json);
}
