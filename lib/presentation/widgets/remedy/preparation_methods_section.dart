import 'package:flutter/material.dart';

class PreparationMethodsSection extends StatelessWidget {
  final List<String> methods;

  const PreparationMethodsSection({required this.methods, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          methods.asMap().entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Expanded(
                    child: Text(
                      entry.value,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
