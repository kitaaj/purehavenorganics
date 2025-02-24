// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStateImpl _$$SearchStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchStateImpl(
      query: json['query'] as String? ?? '',
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      suggestions:
          (json['suggestions'] as List<dynamic>?)
              ?.map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filters:
          json['filters'] == null
              ? const SearchFilters()
              : SearchFilters.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchStateImplToJson(_$SearchStateImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'results': instance.results,
      'suggestions': instance.suggestions,
      'filters': instance.filters,
    };
