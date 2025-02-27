// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_treated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionTreatedImpl _$$ConditionTreatedImplFromJson(
  Map<String, dynamic> json,
) => _$ConditionTreatedImpl(
  condition: json['condition'] as String,
  effectiveness: (json['effectiveness'] as num?)?.toInt(),
  traditionalUse: json['traditionalUse'] as bool?,
  scientificEvidence: json['scientificEvidence'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$$ConditionTreatedImplToJson(
  _$ConditionTreatedImpl instance,
) => <String, dynamic>{
  'condition': instance.condition,
  'effectiveness': instance.effectiveness,
  'traditionalUse': instance.traditionalUse,
  'scientificEvidence': instance.scientificEvidence,
  'notes': instance.notes,
};
