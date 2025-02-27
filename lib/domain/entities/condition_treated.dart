import 'package:freezed_annotation/freezed_annotation.dart';


part 'condition_treated.freezed.dart';
part 'condition_treated.g.dart';


@freezed
class ConditionTreated with _$ConditionTreated {
  const factory ConditionTreated({
    required String condition,
    required int? effectiveness,
    required bool? traditionalUse,
    String? scientificEvidence,
    String? notes,
  }) = _ConditionTreated;

  factory ConditionTreated.fromJson(Map<String, dynamic> json) =>
      _$ConditionTreatedFromJson(json);
}