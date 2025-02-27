// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionSearchResultImpl _$$ConditionSearchResultImplFromJson(
  Map<String, dynamic> json,
) => _$ConditionSearchResultImpl(
  conditionName: json['conditionName'] as String,
  conditionDescription: json['conditionDescription'] as String?,
  symptoms:
      (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
  remedyCount: (json['remedyCount'] as num).toInt(),
  avgEffectiveness: (json['avgEffectiveness'] as num).toInt(),
  topRemedies: json['topRemedies'] as Map<String, dynamic>,
);

Map<String, dynamic> _$$ConditionSearchResultImplToJson(
  _$ConditionSearchResultImpl instance,
) => <String, dynamic>{
  'conditionName': instance.conditionName,
  'conditionDescription': instance.conditionDescription,
  'symptoms': instance.symptoms,
  'remedyCount': instance.remedyCount,
  'avgEffectiveness': instance.avgEffectiveness,
  'topRemedies': instance.topRemedies,
};
