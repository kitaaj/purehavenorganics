// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedies_by_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemediesByCategoryImpl _$$RemediesByCategoryImplFromJson(
  Map<String, dynamic> json,
) => _$RemediesByCategoryImpl(
  remedyName: json['remedyName'] as String,
  commonNames:
      (json['commonNames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  primaryUses:
      (json['primaryUses'] as List<dynamic>?)?.map((e) => e as String).toList(),
  scientificName: json['scientificName'] as String?,
  imgUrl: json['imgUrl'] as String?,
);

Map<String, dynamic> _$$RemediesByCategoryImplToJson(
  _$RemediesByCategoryImpl instance,
) => <String, dynamic>{
  'remedyName': instance.remedyName,
  'commonNames': instance.commonNames,
  'primaryUses': instance.primaryUses,
  'scientificName': instance.scientificName,
  'imgUrl': instance.imgUrl,
};
