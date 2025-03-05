import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'active_component.freezed.dart';
part 'active_component.g.dart';

@freezed
@HiveType(typeId: 35)
class ActiveComponent with _$ActiveComponent {
  const factory ActiveComponent({
     @HiveField(0) 
    required String name,
       @HiveField(1) 
    required List<String> effect,
  }) = _ActiveComponent;

  factory ActiveComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveComponentFromJson(json);
}