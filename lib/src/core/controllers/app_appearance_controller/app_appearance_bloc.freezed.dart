// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_appearance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppAppearanceState {
  bool get isEnglishLanguage => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppAppearanceStateCopyWith<AppAppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAppearanceStateCopyWith<$Res> {
  factory $AppAppearanceStateCopyWith(
          AppAppearanceState value, $Res Function(AppAppearanceState) then) =
      _$AppAppearanceStateCopyWithImpl<$Res>;
  $Res call({bool isEnglishLanguage, bool isDarkMode});
}

/// @nodoc
class _$AppAppearanceStateCopyWithImpl<$Res>
    implements $AppAppearanceStateCopyWith<$Res> {
  _$AppAppearanceStateCopyWithImpl(this._value, this._then);

  final AppAppearanceState _value;
  // ignore: unused_field
  final $Res Function(AppAppearanceState) _then;

  @override
  $Res call({
    Object? isEnglishLanguage = freezed,
    Object? isDarkMode = freezed,
  }) {
    return _then(_value.copyWith(
      isEnglishLanguage: isEnglishLanguage == freezed
          ? _value.isEnglishLanguage
          : isEnglishLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppAppearanceStateCopyWith<$Res>
    implements $AppAppearanceStateCopyWith<$Res> {
  factory _$$_AppAppearanceStateCopyWith(_$_AppAppearanceState value,
          $Res Function(_$_AppAppearanceState) then) =
      __$$_AppAppearanceStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnglishLanguage, bool isDarkMode});
}

/// @nodoc
class __$$_AppAppearanceStateCopyWithImpl<$Res>
    extends _$AppAppearanceStateCopyWithImpl<$Res>
    implements _$$_AppAppearanceStateCopyWith<$Res> {
  __$$_AppAppearanceStateCopyWithImpl(
      _$_AppAppearanceState _value, $Res Function(_$_AppAppearanceState) _then)
      : super(_value, (v) => _then(v as _$_AppAppearanceState));

  @override
  _$_AppAppearanceState get _value => super._value as _$_AppAppearanceState;

  @override
  $Res call({
    Object? isEnglishLanguage = freezed,
    Object? isDarkMode = freezed,
  }) {
    return _then(_$_AppAppearanceState(
      isEnglishLanguage: isEnglishLanguage == freezed
          ? _value.isEnglishLanguage
          : isEnglishLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppAppearanceState implements _AppAppearanceState {
  _$_AppAppearanceState(
      {required this.isEnglishLanguage, required this.isDarkMode});

  @override
  final bool isEnglishLanguage;
  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'AppAppearanceState(isEnglishLanguage: $isEnglishLanguage, isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppAppearanceState &&
            const DeepCollectionEquality()
                .equals(other.isEnglishLanguage, isEnglishLanguage) &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnglishLanguage),
      const DeepCollectionEquality().hash(isDarkMode));

  @JsonKey(ignore: true)
  @override
  _$$_AppAppearanceStateCopyWith<_$_AppAppearanceState> get copyWith =>
      __$$_AppAppearanceStateCopyWithImpl<_$_AppAppearanceState>(
          this, _$identity);
}

abstract class _AppAppearanceState implements AppAppearanceState {
  factory _AppAppearanceState(
      {required final bool isEnglishLanguage,
      required final bool isDarkMode}) = _$_AppAppearanceState;

  @override
  bool get isEnglishLanguage;
  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$_AppAppearanceStateCopyWith<_$_AppAppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
