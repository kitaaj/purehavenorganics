// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomSearchResultImpl _$$SymptomSearchResultImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomSearchResultImpl(
  conditionName: json['conditionName'] as String,
  matchingSymptoms:
      (json['matchingSymptoms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  matchCount: (json['matchCount'] as num).toInt(),
  recommendedRemedies: json['recommendedRemedies'] as Map<String, dynamic>,
);

Map<String, dynamic> _$$SymptomSearchResultImplToJson(
  _$SymptomSearchResultImpl instance,
) => <String, dynamic>{
  'conditionName': instance.conditionName,
  'matchingSymptoms': instance.matchingSymptoms,
  'matchCount': instance.matchCount,
  'recommendedRemedies': instance.recommendedRemedies,
};
