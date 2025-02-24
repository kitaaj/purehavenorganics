import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedy.freezed.dart';
part 'remedy.g.dart';

@freezed
class Remedy with _$Remedy {
  const factory Remedy({
    required int remedyId,
    required int categoryId,
    required String name,
    String? scientificName,
    List<String>? commonNames,
    Map<String, dynamic>? activeComponents,
    List<String>? naturalSources,
    List<String>? additionalBenefits,
    String? mechanismOfAction,
    List<String>? primaryEffects,
    List<String>? secondaryEffects,
    List<String>? preparationMethods,
    String? instructions,
    String? dosage,
    String? timing,
    String? recommendedFrequency,
    String? treatmentDuration,
    List<String>? availableForms,
    String? didYouKnow,
    String? precautions,
    List<String>? sideEffects,
    String? contraindications,
    String? drugInteractions,
    String? allergies,
    List<String>? suitableFor,
    List<String>? notSuitableFor,
    @Default(false) bool medicalSupervisionRequired,
    String? complementToMedication,
    Map<String, dynamic>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default([]) List<int> conditions,
  }) = _Remedy;

  factory Remedy.fromJson(Map<String, dynamic> json) => _$RemedyFromJson(json);
}