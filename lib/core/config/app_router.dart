import 'package:flutter/material.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/presentation/screens/search_screen.dart';
import 'package:purehavenorganics/presentation/screens/profile_screen.dart';
import 'package:purehavenorganics/presentation/screens/app_entry_point.dart';
import 'package:purehavenorganics/presentation/screens/categories_screen.dart';
import 'package:purehavenorganics/presentation/screens/conditions_screen.dart';
import 'package:purehavenorganics/presentation/screens/remedy_detail_screen.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/presentation/screens/symptom_search_screen.dart';
import 'package:purehavenorganics/presentation/screens/condition_detail_screen.dart';
import 'package:purehavenorganics/presentation/screens/category_remedies_screen.dart';
import 'package:purehavenorganics/presentation/screens/remedy_category_remedies_screen.dart';

class AppRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String categories = '/categories';
  static const String categoryRemedies = '/category-remedies';
  static const String conditions = '/conditions';
  static const String conditionDetail = '/condition-detail';
  static const String healthCategoryRemedies = '/health-category-remedies';
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
        return MaterialPageRoute(builder: (context) => const AppEntryPoint());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const AppEntryPoint());

      case AppRoutes.healthCategoryRemedies:
        return MaterialPageRoute(
          builder:
              (context) => HealthCategoryRemediesScreen(
                category: settings.arguments as RemedyCategory,
              ),
        );

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
                category: settings.arguments as HealthCategory,
              ),
        );

      case AppRoutes.conditions:
        return MaterialPageRoute(
          builder: (context) => const ConditionsScreen(),
        );

      case AppRoutes.conditionDetail:
        if (settings.arguments == null) {
          throw ArgumentError(
            'Condition is required for ConditionDetailScreen',
          );
        }
        return MaterialPageRoute(
          builder:
              (context) => ConditionDetailScreen(
                condition: settings.arguments as Condition,
              ),
        );

      case AppRoutes.remedyDetail:
        if (settings.arguments == null) {
          throw ArgumentError(
            'Remedy state is required for RemedyDetailScreen',
          );
        }
        return MaterialPageRoute(
          builder: (context) => RemedyDetailScreen(args: settings.arguments as RemedyDetailArguments,),
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
        return MaterialPageRoute(builder: (conetxt) => const ProfileScreen());

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
