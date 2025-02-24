// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFiltersImpl _$$SearchFiltersImplFromJson(Map<String, dynamic> json) =>
    _$SearchFiltersImpl(
      category: json['category'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      scientificEvidenceOnly: json['scientificEvidenceOnly'] as bool? ?? false,
      minEffectiveness: (json['minEffectiveness'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchFiltersImplToJson(_$SearchFiltersImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'tags': instance.tags,
      'scientificEvidenceOnly': instance.scientificEvidenceOnly,
      'minEffectiveness': instance.minEffectiveness,
    };
