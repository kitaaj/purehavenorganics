// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveComponentImpl _$$ActiveComponentImplFromJson(
  Map<String, dynamic> json,
) => _$ActiveComponentImpl(
  name: json['name'] as String,
  effect: (json['effect'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$$ActiveComponentImplToJson(
  _$ActiveComponentImpl instance,
) => <String, dynamic>{'name': instance.name, 'effect': instance.effect};
