import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    String? currentUser,
    @Default([]) List<String> errors,
  }) = _AppState;

  const factory AppState.initial() = _Initial;
  const factory AppState.loading() = _Loading;
  const factory AppState.authenticated(String user) = _Authenticated;
  const factory AppState.error(String message) = _Error;
}