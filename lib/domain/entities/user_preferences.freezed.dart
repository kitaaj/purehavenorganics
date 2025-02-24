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

/// @nodoc
mixin _$UserPreferences {
  bool get darkMode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get favoriteRemedies => throw _privateConstructorUsedError;
  Map<String, dynamic> get notifications => throw _privateConstructorUsedError;

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
    List<String> favoriteRemedies,
    Map<String, dynamic> notifications,
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
    Object? favoriteRemedies = null,
    Object? notifications = null,
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
            favoriteRemedies:
                null == favoriteRemedies
                    ? _value.favoriteRemedies
                    : favoriteRemedies // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            notifications:
                null == notifications
                    ? _value.notifications
                    : notifications // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
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
    List<String> favoriteRemedies,
    Map<String, dynamic> notifications,
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
    Object? favoriteRemedies = null,
    Object? notifications = null,
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
        favoriteRemedies:
            null == favoriteRemedies
                ? _value._favoriteRemedies
                : favoriteRemedies // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        notifications:
            null == notifications
                ? _value._notifications
                : notifications // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$UserPreferencesImpl implements _UserPreferences {
  const _$UserPreferencesImpl({
    this.darkMode = false,
    this.language = 'en',
    final List<String> favoriteRemedies = const [],
    final Map<String, dynamic> notifications = const {},
  }) : _favoriteRemedies = favoriteRemedies,
       _notifications = notifications;

  @override
  @JsonKey()
  final bool darkMode;
  @override
  @JsonKey()
  final String language;
  final List<String> _favoriteRemedies;
  @override
  @JsonKey()
  List<String> get favoriteRemedies {
    if (_favoriteRemedies is EqualUnmodifiableListView)
      return _favoriteRemedies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteRemedies);
  }

  final Map<String, dynamic> _notifications;
  @override
  @JsonKey()
  Map<String, dynamic> get notifications {
    if (_notifications is EqualUnmodifiableMapView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notifications);
  }

  @override
  String toString() {
    return 'UserPreferences(darkMode: $darkMode, language: $language, favoriteRemedies: $favoriteRemedies, notifications: $notifications)';
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
            const DeepCollectionEquality().equals(
              other._favoriteRemedies,
              _favoriteRemedies,
            ) &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    darkMode,
    language,
    const DeepCollectionEquality().hash(_favoriteRemedies),
    const DeepCollectionEquality().hash(_notifications),
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
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences({
    final bool darkMode,
    final String language,
    final List<String> favoriteRemedies,
    final Map<String, dynamic> notifications,
  }) = _$UserPreferencesImpl;

  @override
  bool get darkMode;
  @override
  String get language;
  @override
  List<String> get favoriteRemedies;
  @override
  Map<String, dynamic> get notifications;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
