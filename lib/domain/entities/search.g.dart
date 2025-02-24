// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultsImpl _$$SearchResultsImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultsImpl(
      remedies:
          (json['remedies'] as List<dynamic>?)
              ?.map((e) => Remedy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      conditions:
          (json['conditions'] as List<dynamic>?)
              ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      symptomResults:
          (json['symptomResults'] as List<dynamic>?)
              ?.map(
                (e) => SymptomSearchResult.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$SearchResultsImplToJson(_$SearchResultsImpl instance) =>
    <String, dynamic>{
      'remedies': instance.remedies,
      'conditions': instance.conditions,
      'symptomResults': instance.symptomResults,
      'errorMessage': instance.errorMessage,
    };
