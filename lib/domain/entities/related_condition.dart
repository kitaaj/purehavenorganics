import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_condition.freezed.dart';
part 'related_condition.g.dart';

@freezed
class RelatedCondition with _$RelatedCondition {
  const factory RelatedCondition({
    required String relatedCondition,
    required String relationshipType,
    required int relationshipStrength,
    String? relationshipDescription,
  }) = _RelatedCondition;

  factory RelatedCondition.fromJson(Map<String, dynamic> json) =>
      _$RelatedConditionFromJson(json);
}