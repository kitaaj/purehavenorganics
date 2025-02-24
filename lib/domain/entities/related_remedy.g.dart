// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_remedy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelatedRemedyImpl _$$RelatedRemedyImplFromJson(Map<String, dynamic> json) =>
    _$RelatedRemedyImpl(
      relatedRemedyName: json['relatedRemedyName'] as String,
      relationshipType: json['relationshipType'] as String,
      relationshipStrength: (json['relationshipStrength'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$RelatedRemedyImplToJson(_$RelatedRemedyImpl instance) =>
    <String, dynamic>{
      'relatedRemedyName': instance.relatedRemedyName,
      'relationshipType': instance.relationshipType,
      'relationshipStrength': instance.relationshipStrength,
      'notes': instance.notes,
    };
