import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;
import 'package:purehavenorganics/presentation/widgets/remedy/remedy_card.dart';

class SavedRemediesList extends StatelessWidget {
  final List<Remedy> items;

  const SavedRemediesList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(child: Text('No saved remedies'));
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => RemedyCard(remedy: items[index]),
    );
  }
}
