import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/active_component.dart';

class ActiveComponentsSection extends StatelessWidget {
  final List<ActiveComponent> components;

  const ActiveComponentsSection({required this.components, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: components.length,
      itemBuilder: (context, index) {
        final component = components.elementAt(index);
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(component.name),
                subtitle: Text('Importance'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  runSpacing: 3,
                  spacing: 8,
                  children: [
                    ...component.effect.map(
                      (function) => Text(
                        '• $function',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
