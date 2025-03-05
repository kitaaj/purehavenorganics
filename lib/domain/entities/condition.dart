import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
@HiveType(typeId: 34)
class Condition with _$Condition {
  const factory Condition({
    @HiveField(0)
    required int conditionId,
    @HiveField(1)
    required String name,
    @HiveField(2)
    String? description,
    @HiveField(3)
    List<String>? symptoms,
    @HiveField(4)
    DateTime? createdAt,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}