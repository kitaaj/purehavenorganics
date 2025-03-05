import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'condition_search_result.freezed.dart';
part 'condition_search_result.g.dart';

@freezed
@HiveType(typeId: 38)
class ConditionSearchResult with _$ConditionSearchResult {
  const factory ConditionSearchResult({
    @HiveField(0)
    required String conditionName,
    @HiveField(1)
    String? conditionDescription,
    @HiveField(2)
    required List<String> symptoms,
    @HiveField(3)
    required int remedyCount,
    @HiveField(4)
    required int avgEffectiveness,
    @HiveField(5)
    required Map<String, dynamic> topRemedies,
  }) = _ConditionSearchResult;

  factory ConditionSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ConditionSearchResultFromJson(json);
}
