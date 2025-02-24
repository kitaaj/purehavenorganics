// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthCategoryImpl _$$HealthCategoryImplFromJson(Map<String, dynamic> json) =>
    _$HealthCategoryImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      name: json['name'] as String,
      parentCategoryId: (json['parentCategoryId'] as num?)?.toInt(),
      description: json['description'] as String?,
      hierarchyLevel: (json['hierarchyLevel'] as num).toInt(),
      categoryPath: json['categoryPath'] as String?,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$HealthCategoryImplToJson(
  _$HealthCategoryImpl instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'name': instance.name,
  'parentCategoryId': instance.parentCategoryId,
  'description': instance.description,
  'hierarchyLevel': instance.hierarchyLevel,
  'categoryPath': instance.categoryPath,
  'createdAt': instance.createdAt?.toIso8601String(),
};
