import 'package:flutter/material.dart';

class PreparationMethodsSection extends StatelessWidget {
  final List<String> methods;

  const PreparationMethodsSection({required this.methods, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: methods.length,
      itemBuilder: (context, index) {
        final method = methods.elementAt(index);
        return ListTile(title: Text('${index + 1}. $method'));
      },
    );
  }
}
