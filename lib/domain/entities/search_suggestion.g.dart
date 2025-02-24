// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchSuggestionImpl _$$SearchSuggestionImplFromJson(
  Map<String, dynamic> json,
) => _$SearchSuggestionImpl(
  suggestion: json['suggestion'] as String,
  suggestionType: json['suggestionType'] as String,
  category: json['category'] as String?,
  relevanceScore: (json['relevanceScore'] as num).toDouble(),
  additionalInfo: json['additionalInfo'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$SearchSuggestionImplToJson(
  _$SearchSuggestionImpl instance,
) => <String, dynamic>{
  'suggestion': instance.suggestion,
  'suggestionType': instance.suggestionType,
  'category': instance.category,
  'relevanceScore': instance.relevanceScore,
  'additionalInfo': instance.additionalInfo,
};
