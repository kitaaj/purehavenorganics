// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

/// @nodoc
mixin _$UserPreferences {
  bool get darkMode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get pushNotifications => throw _privateConstructorUsedError;
  bool get dailyTips => throw _privateConstructorUsedError;
  bool get weeklyNewsletter => throw _privateConstructorUsedError;

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
    UserPreferences value,
    $Res Function(UserPreferences) then,
  ) = _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call({
    bool darkMode,
    String language,
    bool pushNotifications,
    bool dailyTips,
    bool weeklyNewsletter,
  });
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? language = null,
    Object? pushNotifications = null,
    Object? dailyTips = null,
    Object? weeklyNewsletter = null,
  }) {
    return _then(
      _value.copyWith(
            darkMode:
                null == darkMode
                    ? _value.darkMode
                    : darkMode // ignore: cast_nullable_to_non_nullable
                        as bool,
            language:
                null == language
                    ? _value.language
                    : language // ignore: cast_nullable_to_non_nullable
                        as String,
            pushNotifications:
                null == pushNotifications
                    ? _value.pushNotifications
                    : pushNotifications // ignore: cast_nullable_to_non_nullable
                        as bool,
            dailyTips:
                null == dailyTips
                    ? _value.dailyTips
                    : dailyTips // ignore: cast_nullable_to_non_nullable
                        as bool,
            weeklyNewsletter:
                null == weeklyNewsletter
                    ? _value.weeklyNewsletter
                    : weeklyNewsletter // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(
    _$UserPreferencesImpl value,
    $Res Function(_$UserPreferencesImpl) then,
  ) = __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool darkMode,
    String language,
    bool pushNotifications,
    bool dailyTips,
    bool weeklyNewsletter,
  });
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
    _$UserPreferencesImpl _value,
    $Res Function(_$UserPreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? language = null,
    Object? pushNotifications = null,
    Object? dailyTips = null,
    Object? weeklyNewsletter = null,
  }) {
    return _then(
      _$UserPreferencesImpl(
        darkMode:
            null == darkMode
                ? _value.darkMode
                : darkMode // ignore: cast_nullable_to_non_nullable
                    as bool,
        language:
            null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                    as String,
        pushNotifications:
            null == pushNotifications
                ? _value.pushNotifications
                : pushNotifications // ignore: cast_nullable_to_non_nullable
                    as bool,
        dailyTips:
            null == dailyTips
                ? _value.dailyTips
                : dailyTips // ignore: cast_nullable_to_non_nullable
                    as bool,
        weeklyNewsletter:
            null == weeklyNewsletter
                ? _value.weeklyNewsletter
                : weeklyNewsletter // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferencesImpl implements _UserPreferences {
  const _$UserPreferencesImpl({
    this.darkMode = false,
    this.language = 'en_US',
    this.pushNotifications = true,
    this.dailyTips = true,
    this.weeklyNewsletter = true,
  });

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  @JsonKey()
  final bool darkMode;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final bool pushNotifications;
  @override
  @JsonKey()
  final bool dailyTips;
  @override
  @JsonKey()
  final bool weeklyNewsletter;

  @override
  String toString() {
    return 'UserPreferences(darkMode: $darkMode, language: $language, pushNotifications: $pushNotifications, dailyTips: $dailyTips, weeklyNewsletter: $weeklyNewsletter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesImpl &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.dailyTips, dailyTips) ||
                other.dailyTips == dailyTips) &&
            (identical(other.weeklyNewsletter, weeklyNewsletter) ||
                other.weeklyNewsletter == weeklyNewsletter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    darkMode,
    language,
    pushNotifications,
    dailyTips,
    weeklyNewsletter,
  );

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferencesImplToJson(this);
  }
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences({
    final bool darkMode,
    final String language,
    final bool pushNotifications,
    final bool dailyTips,
    final bool weeklyNewsletter,
  }) = _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  bool get darkMode;
  @override
  String get language;
  @override
  bool get pushNotifications;
  @override
  bool get dailyTips;
  @override
  bool get weeklyNewsletter;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
