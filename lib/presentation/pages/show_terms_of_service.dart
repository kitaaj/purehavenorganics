import 'package:flutter/material.dart';

void showTermsOfService(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('Terms of Service')),
          body: const SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text('''
Terms of Service

Last updated: [Date]

1. Acceptance of Terms
...

2. Use of Service
...

3. User Responsibilities
...

4. Limitations of Liability
...
            '''),
          ),
        ),
      ),
    );
  }