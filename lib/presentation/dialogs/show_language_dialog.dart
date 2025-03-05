import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/providers/core_providers.dart' as core;

void showLanguageDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('English (US)'),
              onTap: () {
                ref.read(core.userPreferencesProvider.notifier).setLanguage('en_US');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Español'),
              onTap: () {
                ref.read(core.userPreferencesProvider.notifier).setLanguage('es');
                Navigator.pop(context);
              },
            ),
            // Add more languages as needed
          ],
        ),
      ),
    );
  }