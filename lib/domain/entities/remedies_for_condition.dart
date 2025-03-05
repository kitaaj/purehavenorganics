import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'remedies_for_condition.freezed.dart';
part 'remedies_for_condition.g.dart';

@freezed
@HiveType(typeId: 40)
class RemediesForCondition with _$RemediesForCondition {
  const factory RemediesForCondition({
    @HiveField(0)
    required String remedyName,
    @HiveField(1)
    String? scientificName,
    @HiveField(2)
    required String categoryName,
    @HiveField(3)
    required int effectivenessRating,
    @HiveField(4)
    List<String>? preparationMethods,
    @HiveField(5)
    String? imgUrl,
  }) = _RemediesForCondition;

  factory RemediesForCondition.fromJson(Map<String, dynamic> json) =>
      _$RemediesForConditionFromJson(json);
}