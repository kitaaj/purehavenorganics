// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyConditionImpl _$$RemedyConditionImplFromJson(
  Map<String, dynamic> json,
) => _$RemedyConditionImpl(
  conditionName: json['conditionName'] as String,
  description: json['description'] as String?,
  symptoms:
      (json['symptoms'] as List<dynamic>?)?.map((e) => e as String).toList(),
  effectiveness: (json['effectiveness'] as num?)?.toInt(),
  hasTraditionalUse: json['hasTraditionalUse'] as bool,
  hasScientificEvidence: json['hasScientificEvidence'] as bool,
);

Map<String, dynamic> _$$RemedyConditionImplToJson(
  _$RemedyConditionImpl instance,
) => <String, dynamic>{
  'conditionName': instance.conditionName,
  'description': instance.description,
  'symptoms': instance.symptoms,
  'effectiveness': instance.effectiveness,
  'hasTraditionalUse': instance.hasTraditionalUse,
  'hasScientificEvidence': instance.hasScientificEvidence,
};
