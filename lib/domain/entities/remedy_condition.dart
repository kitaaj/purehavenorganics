import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedy_condition.freezed.dart';
part 'remedy_condition.g.dart';

@freezed
class RemedyCondition with _$RemedyCondition {
  const factory RemedyCondition({
    required String conditionName,
    String? description,
    List<String>? symptoms,
    int? effectiveness,
    required bool hasTraditionalUse,
    required bool hasScientificEvidence,
  }) = _RemedyCondition;

  factory RemedyCondition.fromJson(Map<String, dynamic> json) =>
      _$RemedyConditionFromJson(json);
}