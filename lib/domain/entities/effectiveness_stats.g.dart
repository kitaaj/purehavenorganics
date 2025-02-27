// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effectiveness_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EffectivenessStatsImpl _$$EffectivenessStatsImplFromJson(
  Map<String, dynamic> json,
) => _$EffectivenessStatsImpl(
  averageRating: (json['averageRating'] as num?)?.toInt(),
  totalConditions: (json['totalConditions'] as num?)?.toInt(),
  evidenceBasedCount: (json['evidenceBasedCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$EffectivenessStatsImplToJson(
  _$EffectivenessStatsImpl instance,
) => <String, dynamic>{
  'averageRating': instance.averageRating,
  'totalConditions': instance.totalConditions,
  'evidenceBasedCount': instance.evidenceBasedCount,
};
