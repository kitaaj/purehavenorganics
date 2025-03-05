import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/domain/entities/active_component.dart';

part 'remedy.freezed.dart';
part 'remedy.g.dart';

@freezed
@HiveType(typeId: 33)
class Remedy with _$Remedy {
  const factory Remedy({
    @HiveField(0)
    required int remedyId,
    @HiveField(1)
    required int categoryId,
    @HiveField(2)
    required String name,
    @HiveField(3)
    String? scientificName,
    @HiveField(4)
    List<String>? commonNames,
    @HiveField(5)
    List<ActiveComponent>? activeComponents,
    @HiveField(6)
    List<String>? naturalSources,
    @HiveField(7)
    List<String>? additionalBenefits,
    @HiveField(8)
    String? mechanismOfAction,
    @HiveField(9)
    List<String>? primaryEffects,
    @HiveField(10)
    List<String>? secondaryEffects,
    @HiveField(11)
    List<String>? preparationMethods,
    @HiveField(12)
    String? instructions,
    @HiveField(13)
    String? dosage,
    @HiveField(14)
    String? timing,
    @HiveField(15)
    String? recommendedFrequency,
    @HiveField(16)
    String? treatmentDuration,
    @HiveField(17)
    List<String>? availableForms,
    @HiveField(18)
    String? didYouKnow,
    @HiveField(19)
    String? precautions,
    @HiveField(20)
    List<String>? sideEffects,
    @HiveField(21)
    String? contraindications,
    @HiveField(22)
    String? drugInteractions,
    @HiveField(23)
    String? allergies,
    @HiveField(24)
    List<String>? suitableFor,
    @HiveField(25)
    List<String>? notSuitableFor,
    @HiveField(26)
    @Default(false) bool medicalSupervisionRequired,
    @HiveField(27)
    String? complementToMedication,
    @HiveField(28)
    List<String>? tags,
    @HiveField(29)
    DateTime? createdAt,
    @HiveField(30)
    DateTime? updatedAt,
    @HiveField(31)
    @Default([]) List<int> conditions,
    @HiveField(32)
    String? imgUrl,
  }) = _Remedy;

  factory Remedy.fromJson(Map<String, dynamic> json) => _$RemedyFromJson(json);
}
