import 'dart:developer' as devtools;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/cache/cache_manager.dart';
import 'package:purehavenorganics/core/services/supabase_service.dart';
import 'package:purehavenorganics/core/storage/preferences_service.dart';
import 'package:purehavenorganics/presentation/app.dart';
import 'package:purehavenorganics/presentation/screens/crash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await CacheManager.init();
  await PreferencesService.init();

  try {
    await SupabaseService.initialize();   

    runApp(const ProviderScope(child: NaturalRemediesApp()));
  } catch (e, stack) {
    ('FATAL INIT ERROR: $e').log();
    (stack).log();

    runApp(ErrorDisplayScreen(error: e));
  }
}

extension Log on Object {
  void log() => devtools.log(toString());
}
