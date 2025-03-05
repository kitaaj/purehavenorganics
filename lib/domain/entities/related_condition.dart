import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'related_condition.freezed.dart';
part 'related_condition.g.dart';

@freezed
@HiveType(typeId: 39)
class RelatedCondition with _$RelatedCondition {
  const factory RelatedCondition({
    @HiveField(0)
    required String relatedCondition,
    @HiveField(1)
    required String relationshipType,
    @HiveField(2)
    required int relationshipStrength,
    @HiveField(3)
    String? relationshipDescription,
  }) = _RelatedCondition;

  factory RelatedCondition.fromJson(Map<String, dynamic> json) =>
      _$RelatedConditionFromJson(json);
}