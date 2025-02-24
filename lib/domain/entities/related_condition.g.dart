// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelatedConditionImpl _$$RelatedConditionImplFromJson(
  Map<String, dynamic> json,
) => _$RelatedConditionImpl(
  relatedCondition: json['relatedCondition'] as String,
  relationshipType: json['relationshipType'] as String,
  relationshipStrength: (json['relationshipStrength'] as num).toInt(),
  relationshipDescription: json['relationshipDescription'] as String?,
);

Map<String, dynamic> _$$RelatedConditionImplToJson(
  _$RelatedConditionImpl instance,
) => <String, dynamic>{
  'relatedCondition': instance.relatedCondition,
  'relationshipType': instance.relationshipType,
  'relationshipStrength': instance.relationshipStrength,
  'relationshipDescription': instance.relationshipDescription,
};
