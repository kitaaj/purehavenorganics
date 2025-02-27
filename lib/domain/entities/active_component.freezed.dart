// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ActiveComponent _$ActiveComponentFromJson(Map<String, dynamic> json) {
  return _ActiveComponent.fromJson(json);
}

/// @nodoc
mixin _$ActiveComponent {
  String get name => throw _privateConstructorUsedError;
  List<String> get effect => throw _privateConstructorUsedError;

  /// Serializes this ActiveComponent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveComponentCopyWith<ActiveComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveComponentCopyWith<$Res> {
  factory $ActiveComponentCopyWith(
    ActiveComponent value,
    $Res Function(ActiveComponent) then,
  ) = _$ActiveComponentCopyWithImpl<$Res, ActiveComponent>;
  @useResult
  $Res call({String name, List<String> effect});
}

/// @nodoc
class _$ActiveComponentCopyWithImpl<$Res, $Val extends ActiveComponent>
    implements $ActiveComponentCopyWith<$Res> {
  _$ActiveComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? effect = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            effect:
                null == effect
                    ? _value.effect
                    : effect // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ActiveComponentImplCopyWith<$Res>
    implements $ActiveComponentCopyWith<$Res> {
  factory _$$ActiveComponentImplCopyWith(
    _$ActiveComponentImpl value,
    $Res Function(_$ActiveComponentImpl) then,
  ) = __$$ActiveComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> effect});
}

/// @nodoc
class __$$ActiveComponentImplCopyWithImpl<$Res>
    extends _$ActiveComponentCopyWithImpl<$Res, _$ActiveComponentImpl>
    implements _$$ActiveComponentImplCopyWith<$Res> {
  __$$ActiveComponentImplCopyWithImpl(
    _$ActiveComponentImpl _value,
    $Res Function(_$ActiveComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActiveComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? effect = null}) {
    return _then(
      _$ActiveComponentImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        effect:
            null == effect
                ? _value._effect
                : effect // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveComponentImpl implements _ActiveComponent {
  const _$ActiveComponentImpl({
    required this.name,
    required final List<String> effect,
  }) : _effect = effect;

  factory _$ActiveComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveComponentImplFromJson(json);

  @override
  final String name;
  final List<String> _effect;
  @override
  List<String> get effect {
    if (_effect is EqualUnmodifiableListView) return _effect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_effect);
  }

  @override
  String toString() {
    return 'ActiveComponent(name: $name, effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveComponentImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._effect, _effect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    const DeepCollectionEquality().hash(_effect),
  );

  /// Create a copy of ActiveComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveComponentImplCopyWith<_$ActiveComponentImpl> get copyWith =>
      __$$ActiveComponentImplCopyWithImpl<_$ActiveComponentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveComponentImplToJson(this);
  }
}

abstract class _ActiveComponent implements ActiveComponent {
  const factory _ActiveComponent({
    required final String name,
    required final List<String> effect,
  }) = _$ActiveComponentImpl;

  factory _ActiveComponent.fromJson(Map<String, dynamic> json) =
      _$ActiveComponentImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get effect;

  /// Create a copy of ActiveComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveComponentImplCopyWith<_$ActiveComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
