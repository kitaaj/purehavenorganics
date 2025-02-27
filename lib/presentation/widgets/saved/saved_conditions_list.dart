import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition.dart' show Condition;
import 'package:purehavenorganics/presentation/widgets/condition/condition_card.dart' show ConditionCard;

class SavedConditionsList extends StatelessWidget {
  final List<Condition> items;

  const SavedConditionsList({
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Text('No saved conditions'),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ConditionCard(
        condition: items[index],
      ),
    );
  }
}