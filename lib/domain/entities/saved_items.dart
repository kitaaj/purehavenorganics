import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;

part 'saved_items.freezed.dart';
part 'saved_items.g.dart';

@freezed
@HiveType(typeId: 32)
class SavedItems with _$SavedItems {
  const factory SavedItems({
    @HiveField(0)
    @Default([]) 
    List<Remedy> remedies,
    @HiveField(1)
    @Default([]) 
    List<Condition> conditions,
  }) = _SavedItems;

  factory SavedItems.fromJson(Map<String, dynamic> json) =>
      _$SavedItemsFromJson(json);
}
