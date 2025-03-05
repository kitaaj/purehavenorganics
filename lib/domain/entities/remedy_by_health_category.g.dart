// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_by_health_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyByHealthCategoryImpl _$$RemedyByHealthCategoryImplFromJson(
  Map<String, dynamic> json,
) => _$RemedyByHealthCategoryImpl(
  remedyId: (json['remedyId'] as num).toInt(),
  remedyName: json['remedyName'] as String,
  healthCategoryId: (json['healthCategoryId'] as num).toInt(),
  primaryCategory: json['primaryCategory'] as bool,
  effectivenessRating: (json['effectivenessRating'] as num?)?.toInt(),
  notes: json['notes'] as String?,
  categoryName: json['categoryName'] as String,
);

Map<String, dynamic> _$$RemedyByHealthCategoryImplToJson(
  _$RemedyByHealthCategoryImpl instance,
) => <String, dynamic>{
  'remedyId': instance.remedyId,
  'remedyName': instance.remedyName,
  'healthCategoryId': instance.healthCategoryId,
  'primaryCategory': instance.primaryCategory,
  'effectivenessRating': instance.effectivenessRating,
  'notes': instance.notes,
  'categoryName': instance.categoryName,
};
