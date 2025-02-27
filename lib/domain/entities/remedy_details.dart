import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purehavenorganics/domain/entities/active_component.dart';
import 'package:purehavenorganics/domain/entities/condition_treated.dart';
import 'package:purehavenorganics/domain/entities/effectiveness_stats.dart';
import 'package:purehavenorganics/domain/entities/usage_instructions.dart';

part 'remedy_details.freezed.dart';
part 'remedy_details.g.dart';

@freezed
class RemedyDetails with _$RemedyDetails {
  const factory RemedyDetails({
    required String remedyName,
    String? scientificName,
    required String categoryName,
    required List<String> commonNames,
    required List<ActiveComponent> activeComponents,
    required List<String> preparationMethods,
    required List<ConditionTreated> conditionsTreated,
    EffectivenessStats? effectivenessStats,
    UsageInstructions? usageInstructions,
  }) = _RemedyDetails;

  factory RemedyDetails.fromJson(Map<String, dynamic> json) =>
      _$RemedyDetailsFromJson(json);
}