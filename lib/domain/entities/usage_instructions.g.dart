// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_instructions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageInstructionsImpl _$$UsageInstructionsImplFromJson(
  Map<String, dynamic> json,
) => _$UsageInstructionsImpl(
  dosage: json['dosage'] as String,
  timing: json['timing'] as String,
  frequency: json['frequency'] as String,
  duration: json['duration'] as String,
  instructions: json['instructions'] as String,
  precautions: json['precautions'] as String,
  contraindications: json['contraindications'] as String?,
);

Map<String, dynamic> _$$UsageInstructionsImplToJson(
  _$UsageInstructionsImpl instance,
) => <String, dynamic>{
  'dosage': instance.dosage,
  'timing': instance.timing,
  'frequency': instance.frequency,
  'duration': instance.duration,
  'instructions': instance.instructions,
  'precautions': instance.precautions,
  'contraindications': instance.contraindications,
};
