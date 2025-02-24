class AppConfig {
  static late final AppConfig instance;
  
  final String apiBaseUrl;
  final String appName;
  
  AppConfig._({
    required this.apiBaseUrl,
    required this.appName,
  });

  static Future<void> initialize() async {
    instance = AppConfig._(
      apiBaseUrl: const String.fromEnvironment('API_BASE_URL', 
          defaultValue: 'http://localhost:8080'),
      appName: 'Natural Remedies',
    );
  }
}