 import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void showHelpAndSupport(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help & Support',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text('Contact Support'),
              subtitle: const Text('support@purehavenorganics.com'),
              onTap: () {
                launchUrl(Uri.parse('mailto:support@purehavenorganics.com'));
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_outlined),
              title: const Text('FAQs'),
              onTap: () {
                launchUrl(Uri.parse('https://purehavenorganics.com/faqs'));
              },
            ),
          ],
        ),
      ),
    );
  }