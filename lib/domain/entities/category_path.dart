import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_path.freezed.dart';
part 'category_path.g.dart';

@freezed
class CategoryPath with _$CategoryPath {
  const factory CategoryPath({
    required int level,
    required String categoryName,
  }) = _CategoryPath;

  factory CategoryPath.fromJson(Map<String, dynamic> json) =>
      _$CategoryPathFromJson(json);
}