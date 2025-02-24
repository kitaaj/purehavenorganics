// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyCategoryImpl _$$RemedyCategoryImplFromJson(Map<String, dynamic> json) =>
    _$RemedyCategoryImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      categoryName: json['categoryName'] as String,
      description: json['description'] as String?,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$RemedyCategoryImplToJson(
  _$RemedyCategoryImpl instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'description': instance.description,
  'createdAt': instance.createdAt?.toIso8601String(),
};
