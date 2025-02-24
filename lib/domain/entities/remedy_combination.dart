import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedy_combination.freezed.dart';
part 'remedy_combination.g.dart';

@freezed
class RemedyCombination with _$RemedyCombination {
  const factory RemedyCombination({
    required String primaryRemedy,
    required String complementaryRemedy,
    required String relationshipType,
    required int strength,
    String? notes,
    Map<String, dynamic>? primaryPreparation,
    Map<String, dynamic>? complementaryPreparation,
    List<String>? contraindications,
    List<String>? precautions,
    List<int>? commonConditions,
    List<String>? drugInteractions,
  }) = _RemedyCombination;

  factory RemedyCombination.fromJson(Map<String, dynamic> json) =>
      _$RemedyCombinationFromJson(json);
}