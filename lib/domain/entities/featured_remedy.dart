import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'featured_remedy.freezed.dart';
part 'featured_remedy.g.dart';

@freezed
@HiveType(typeId: 42)
class FeaturedRemedy with _$FeaturedRemedy {
  const factory FeaturedRemedy({
    @HiveField(0)
    required String remedyName,
    @HiveField(1)
    String? scientificName,
    @HiveField(2)
    required String categoryName,
    @HiveField(3)
    required List<String> primaryUses,
    @HiveField(4)
    required int effectivenessScore,
    String? imgUrl,
  }) = _FeaturedRemedy;

  factory FeaturedRemedy.fromJson(Map<String, dynamic> json) =>
      _$FeaturedRemedyFromJson(json);
}