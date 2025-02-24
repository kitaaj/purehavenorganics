import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseConfig {
  static late final String supabaseApiKey;
  static late final String supabaseUrl;

  static Future<void> initialize() async {
    await dotenv.load(fileName: '.env');

    supabaseUrl = _getEnv('SUPABASE_URL');
    supabaseApiKey = _getEnv('SUPABASE_ANONKEY');
  }

  static String _getEnv(String key) {
    final value = dotenv.env[key];
    if (value == null || value.isEmpty) {
      throw Exception('Missing required environment variable: $key');
    }
    return value;
  }
}
