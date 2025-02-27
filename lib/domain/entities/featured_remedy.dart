import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_remedy.freezed.dart';
part 'featured_remedy.g.dart';

@freezed
class FeaturedRemedy with _$FeaturedRemedy {
  const factory FeaturedRemedy({
    required String remedyName,
    String? scientificName,
    required String categoryName,
    required List<String> primaryUses,
    required int effectivenessScore,
  }) = _FeaturedRemedy;

  factory FeaturedRemedy.fromJson(Map<String, dynamic> json) =>
      _$FeaturedRemedyFromJson(json);
}