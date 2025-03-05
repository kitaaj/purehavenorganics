import 'package:flutter/material.dart';

void showAboutPopupDialog(BuildContext context) {
  showAboutDialog(
    context: context,
    applicationName: 'Pure Haven Organics',
    applicationVersion: '1.0.0',
    barrierDismissible: false,
    applicationIcon: Image.asset(
      'assets/images/logo.png',
      width: 50,
      height: 50,
    ),
    children: [
      const Text(
        'Pure Haven Organics is your trusted companion for natural remedies and holistic wellness. '
        'Our app provides comprehensive information about herbs, natural treatments, '
        'and traditional healing methods.',
      ),
      const SizedBox(height: 16),
      const Text('© 2024 Pure Haven Organics. All rights reserved.'),
    ],
  );
}
