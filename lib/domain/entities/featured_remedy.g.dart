// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_remedy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedRemedyImpl _$$FeaturedRemedyImplFromJson(Map<String, dynamic> json) =>
    _$FeaturedRemedyImpl(
      remedyName: json['remedyName'] as String,
      scientificName: json['scientificName'] as String?,
      categoryName: json['categoryName'] as String,
      primaryUses:
          (json['primaryUses'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      effectivenessScore: (json['effectivenessScore'] as num).toInt(),
      imgUrl: json['imgUrl'] as String?,
    );

Map<String, dynamic> _$$FeaturedRemedyImplToJson(
  _$FeaturedRemedyImpl instance,
) => <String, dynamic>{
  'remedyName': instance.remedyName,
  'scientificName': instance.scientificName,
  'categoryName': instance.categoryName,
  'primaryUses': instance.primaryUses,
  'effectivenessScore': instance.effectivenessScore,
  'imgUrl': instance.imgUrl,
};
