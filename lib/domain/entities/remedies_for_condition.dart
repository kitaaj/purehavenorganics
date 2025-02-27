import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedies_for_condition.freezed.dart';
part 'remedies_for_condition.g.dart';

@freezed
class RemediesForCondition with _$RemediesForCondition {
  const factory RemediesForCondition({
    required String remedyName,
    String? scientificName,
    required String categoryName,
    required int effectivenessRating,
    List<String>? preparationMethods,
  }) = _RemediesForCondition;

  factory RemediesForCondition.fromJson(Map<String, dynamic> json) =>
      _$RemediesForConditionFromJson(json);
}