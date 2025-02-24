class AppException implements Exception {
  final String message;
  final String? code;

  AppException(this.message, [this.code]);

  @override
  String toString() => 'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

class RemedyException extends AppException {
  RemedyException(super.message, [super.code]);
}

class SearchException extends AppException {
  SearchException({required String message, String? code}) : super(message, code);
}