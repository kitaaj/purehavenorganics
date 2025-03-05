import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/utils/constants/also_from_dishpoa.dart';
import 'package:url_launcher/url_launcher.dart';

class DishPoaAppsSection extends StatelessWidget {
  const DishPoaAppsSection({super.key});

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Also from Dishpoa Technologies',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dishpoaApps.length,
          itemBuilder: (context, index) {
            final app = dishpoaApps[index];
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    app['icon']!,
                    fit: BoxFit.cover,
                    errorBuilder: (
                      BuildContext context,
                      Object exception,
                      StackTrace? stackTrace,
                    ) {
                      return Text('Failed to load icon');
                    },
                  ),
                ),
              ),
              title: Text(
                app['name']!,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              subtitle: Text(
                app['description']!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              onTap: () => _launchUrl(app['url']!),
            );
          },
        ),
      ],
    );
  }
}