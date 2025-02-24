import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedy_category.freezed.dart';
part 'remedy_category.g.dart';

@freezed
class RemedyCategory with _$RemedyCategory {
  const factory RemedyCategory({
    required int categoryId,
    required String categoryName,
    String? description,
    DateTime? createdAt,
  }) = _RemedyCategory;

  factory RemedyCategory.fromJson(Map<String, dynamic> json) =>
      _$RemedyCategoryFromJson(json);
}