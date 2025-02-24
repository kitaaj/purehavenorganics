import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';

class ConditionCard extends StatelessWidget {
  final Condition condition;

  const ConditionCard({
    required this.condition,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(condition.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (condition.description != null)
              Text(
                condition.description!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            if (condition.symptoms != null && condition.symptoms!.isNotEmpty)
              Wrap(
                spacing: 4,
                children: condition.symptoms!
                    .take(3)
                    .map((symptom) => Chip(
                          label: Text(
                            symptom,
                            style: const TextStyle(fontSize: 12),
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ))
                    .toList(),
              ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Navigate to condition details
          // Navigator.pushNamed(context, '/condition', arguments: condition);
        },
      ),
    );
  }
}