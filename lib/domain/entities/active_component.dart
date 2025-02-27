import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_component.freezed.dart';
part 'active_component.g.dart';

@freezed
class ActiveComponent with _$ActiveComponent {
  const factory ActiveComponent({
    required String name,
    required List<String> effect,
  }) = _ActiveComponent;

  factory ActiveComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveComponentFromJson(json);
}