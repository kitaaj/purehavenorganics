import 'package:flutter/material.dart';

void showPrivacyPolicy(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder:
          (context) => Scaffold(
            appBar: AppBar(title: const Text('Privacy Policy')),
            body: const SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Text('''
Privacy Policy

Last updated: [Date]

1. Information We Collect
...

2. How We Use Your Information
...

3. Data Security
...

4. Your Rights
...
            '''),
            ),
          ),
    ),
  );
}
