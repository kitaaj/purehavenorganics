import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'remedy_category.freezed.dart';
part 'remedy_category.g.dart';

@freezed
@HiveType(typeId: 44)
class RemedyCategory with _$RemedyCategory {
  const factory RemedyCategory({
    @HiveField(0) required int categoryId,
    @HiveField(1) required String categoryName,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? createdAt,
  }) = _RemedyCategory;

  factory RemedyCategory.fromJson(Map<String, dynamic> json) =>
      _$RemedyCategoryFromJson(json);
}
