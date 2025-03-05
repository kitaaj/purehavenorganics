import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/presentation/widgets/dish_poa/dish_poa_apps_section.dart';
import 'package:purehavenorganics/presentation/widgets/navigation/main_drawer_header.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          MainDrawerHeader(),
          ListTile(
            leading: const Icon(Icons.health_and_safety),
            title: const Text('Health Conditions'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AppRoutes.conditions);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AppRoutes.profile);
            },
          ),
          const Divider(),
          DishPoaAppsSection(),
        ],
      ),
    );
  }
}
