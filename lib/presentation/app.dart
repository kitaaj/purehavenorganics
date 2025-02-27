import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/config/app_router.dart';
import 'package:purehavenorganics/core/providers/core_providers.dart';
import 'package:purehavenorganics/presentation/theme/app_theme.dart';

class NaturalRemediesApp extends ConsumerWidget {
  const NaturalRemediesApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Natural Remedies',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.root,
    );
  }
}
