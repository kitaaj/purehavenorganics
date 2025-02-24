import 'dart:developer' as devtools;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/services/supabase_service.dart';
// import 'package:purehavenorganics/core/config/app_config.dart';
// import 'package:purehavenorganics/core/services/supabse_config.dart';
import 'package:purehavenorganics/presentation/app.dart';
import 'package:purehavenorganics/presentation/screens/crash_screen.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await AppConfig.initialize();

  try {
    // await SupabaseConfig.initialize();
    // await Supabase.initialize(
    //   url: SupabaseConfig.supabaseUrl,
    //   anonKey: SupabaseConfig.supabaseApiKey,
    // );
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
