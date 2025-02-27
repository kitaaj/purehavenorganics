import 'package:freezed_annotation/freezed_annotation.dart';

part 'effectiveness_stats.freezed.dart';
part 'effectiveness_stats.g.dart';


@freezed
class EffectivenessStats with _$EffectivenessStats {
  const factory EffectivenessStats({
    int? averageRating,
    int? totalConditions,
    int? evidenceBasedCount,
  }) = _EffectivenessStats;

  factory EffectivenessStats.fromJson(Map<String, dynamic> json) =>
      _$EffectivenessStatsFromJson(json);
}