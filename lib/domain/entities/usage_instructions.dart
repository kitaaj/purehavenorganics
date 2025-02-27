import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_instructions.freezed.dart';
part 'usage_instructions.g.dart';

@freezed
class UsageInstructions with _$UsageInstructions {
  const factory UsageInstructions({
    required String dosage,
    required String timing,
    required String frequency,
    required String duration,
    required String instructions,
    required String precautions,
    String? contraindications,
  }) = _UsageInstructions;

  factory UsageInstructions.fromJson(Map<String, dynamic> json) =>
      _$UsageInstructionsFromJson(json);
}