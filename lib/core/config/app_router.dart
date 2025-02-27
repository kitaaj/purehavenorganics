import 'package:flutter/material.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/screens/app_entry_point.dart';
import 'package:purehavenorganics/presentation/screens/categories_screen.dart';
import 'package:purehavenorganics/presentation/screens/category_remedies_screen.dart';
import 'package:purehavenorganics/presentation/screens/condition_detail_screen.dart';
import 'package:purehavenorganics/presentation/screens/conditions_screen.dart';
import 'package:purehavenorganics/presentation/screens/profile_screen.dart';
import 'package:purehavenorganics/presentation/screens/remedy_detail_screen.dart';
import 'package:purehavenorganics/presentation/screens/search_screen.dart';
import 'package:purehavenorganics/presentation/screens/symptom_search_screen.dart';

class AppRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String categories = '/categories';
  static const String categoryRemedies = '/category-remedies';
  static const String conditions = '/conditions';
  static const String conditionDetail = '/condition-detail';
  static const String remedyDetail = '/remedy-detail';
  static const String search = '/search';
  static const String symptomSearch = '/symptom-search';
  static const String profile = '/profile';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    ('🔥 Navigating to: ${settings.name}').log();
    switch (settings.name) {
      case AppRoutes.root:
        return MaterialPageRoute(builder: (_) => const AppEntryPoint());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const AppEntryPoint());

      case AppRoutes.categories:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );

      case AppRoutes.categoryRemedies:
        if (settings.arguments == null) {
          throw ArgumentError(
            'Category name is required for CategoryRemediesScreen',
          );
        }
        return MaterialPageRoute(
          builder:
              (context) => CategoryRemediesScreen(
                category: settings.arguments as String,
              ),
        );

      case AppRoutes.conditions:
        return MaterialPageRoute(
          builder: (context) => const ConditionsScreen(),
        );

      case AppRoutes.conditionDetail:
        if (settings.arguments == null) {
          throw ArgumentError(
            'Condition name is required for ConditionDetailScreen',
          );
        }
        return MaterialPageRoute(
          builder:
              (context) => ConditionDetailScreen(
                conditionName: settings.arguments as String,
              ),
        );

      case AppRoutes.remedyDetail:
        if (settings.arguments == null) {
          throw ArgumentError('Remedy name is required for RemedyDetailScreen');
        }
        return MaterialPageRoute(
          builder:
              (context) =>
                  RemedyDetailScreen(remedyName: settings.arguments as String),
        );
      case AppRoutes.search:
        return MaterialPageRoute(
          builder: (context) => const SearchScreen(),
          fullscreenDialog: true,
        );

      case AppRoutes.symptomSearch:
        if (settings.arguments is! String) {
          throw ArgumentError('Symptom is required for SymptomSearchScreen');
        }
        return MaterialPageRoute(
          builder:
              (context) =>
                  SymptomSearchScreen(symptom: settings.arguments as String),
        );

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      default:
        return MaterialPageRoute(
          builder:
              (context) => Scaffold(
                appBar: AppBar(title: const Text('Page Not Found')),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Route "${settings.name}" not found',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed:
                            () => Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.home,
                              (route) => false,
                            ),
                        child: const Text('Go Home'),
                      ),
                    ],
                  ),
                ),
              ),
        );
    }
  }
}
