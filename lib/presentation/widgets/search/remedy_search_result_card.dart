import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart' show Remedy;

class RemedySearchResultCard extends StatelessWidget {
  final Remedy remedy;
  final VoidCallback? onTap;

  const RemedySearchResultCard({required this.remedy, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.local_pharmacy),
        title: Text(remedy.name),
        subtitle: Text(remedy.scientificName ?? ''),
        onTap: onTap,
      ),
    );
  }
}
