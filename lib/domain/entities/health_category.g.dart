// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthCategoryImpl _$$HealthCategoryImplFromJson(Map<String, dynamic> json) =>
    _$HealthCategoryImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      displayName: json['displayName'] as String,
      parentCategoryId: (json['parentCategoryId'] as num?)?.toInt(),
      level: (json['level'] as num).toInt(),
      isLeaf: json['isLeaf'] as bool,
    );

Map<String, dynamic> _$$HealthCategoryImplToJson(
  _$HealthCategoryImpl instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'displayName': instance.displayName,
  'parentCategoryId': instance.parentCategoryId,
  'level': instance.level,
  'isLeaf': instance.isLeaf,
};
