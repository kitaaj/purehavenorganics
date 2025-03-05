// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedies_for_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemediesForConditionImpl _$$RemediesForConditionImplFromJson(
  Map<String, dynamic> json,
) => _$RemediesForConditionImpl(
  remedyName: json['remedyName'] as String,
  scientificName: json['scientificName'] as String?,
  categoryName: json['categoryName'] as String,
  effectivenessRating: (json['effectivenessRating'] as num).toInt(),
  preparationMethods:
      (json['preparationMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  imgUrl: json['imgUrl'] as String?,
);

Map<String, dynamic> _$$RemediesForConditionImplToJson(
  _$RemediesForConditionImpl instance,
) => <String, dynamic>{
  'remedyName': instance.remedyName,
  'scientificName': instance.scientificName,
  'categoryName': instance.categoryName,
  'effectivenessRating': instance.effectivenessRating,
  'preparationMethods': instance.preparationMethods,
  'imgUrl': instance.imgUrl,
};
