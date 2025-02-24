import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_remedy.freezed.dart';
part 'related_remedy.g.dart';

@freezed
class RelatedRemedy with _$RelatedRemedy {
  const factory RelatedRemedy({
    required String relatedRemedyName,
    required String relationshipType,
    required int relationshipStrength,
    String? notes,
  }) = _RelatedRemedy;

  factory RelatedRemedy.fromJson(Map<String, dynamic> json) =>
      _$RelatedRemedyFromJson(json);
}