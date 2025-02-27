import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;

part 'saved_items.freezed.dart';
part 'saved_items.g.dart';

@freezed
class SavedItems with _$SavedItems {
  const factory SavedItems({
    @Default([]) List<Remedy> remedies,
    @Default([]) List<Condition> conditions,
  }) = _SavedItems;

  factory SavedItems.fromJson(Map<String, dynamic> json) =>
      _$SavedItemsFromJson(json);
}
