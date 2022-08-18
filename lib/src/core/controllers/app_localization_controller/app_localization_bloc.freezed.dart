// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppLocalizationState {
  bool get isEnglishLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLocalizationStateCopyWith<AppLocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocalizationStateCopyWith<$Res> {
  factory $AppLocalizationStateCopyWith(AppLocalizationState value,
          $Res Function(AppLocalizationState) then) =
      _$AppLocalizationStateCopyWithImpl<$Res>;
  $Res call({bool isEnglishLanguage});
}

/// @nodoc
class _$AppLocalizationStateCopyWithImpl<$Res>
    implements $AppLocalizationStateCopyWith<$Res> {
  _$AppLocalizationStateCopyWithImpl(this._value, this._then);

  final AppLocalizationState _value;
  // ignore: unused_field
  final $Res Function(AppLocalizationState) _then;

  @override
  $Res call({
    Object? isEnglishLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      isEnglishLanguage: isEnglishLanguage == freezed
          ? _value.isEnglishLanguage
          : isEnglishLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppLocalizationStateCopyWith<$Res>
    implements $AppLocalizationStateCopyWith<$Res> {
  factory _$$_AppLocalizationStateCopyWith(_$_AppLocalizationState value,
          $Res Function(_$_AppLocalizationState) then) =
      __$$_AppLocalizationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnglishLanguage});
}

/// @nodoc
class __$$_AppLocalizationStateCopyWithImpl<$Res>
    extends _$AppLocalizationStateCopyWithImpl<$Res>
    implements _$$_AppLocalizationStateCopyWith<$Res> {
  __$$_AppLocalizationStateCopyWithImpl(_$_AppLocalizationState _value,
      $Res Function(_$_AppLocalizationState) _then)
      : super(_value, (v) => _then(v as _$_AppLocalizationState));

  @override
  _$_AppLocalizationState get _value => super._value as _$_AppLocalizationState;

  @override
  $Res call({
    Object? isEnglishLanguage = freezed,
  }) {
    return _then(_$_AppLocalizationState(
      isEnglishLanguage: isEnglishLanguage == freezed
          ? _value.isEnglishLanguage
          : isEnglishLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppLocalizationState implements _AppLocalizationState {
  _$_AppLocalizationState({required this.isEnglishLanguage});

  @override
  final bool isEnglishLanguage;

  @override
  String toString() {
    return 'AppLocalizationState(isEnglishLanguage: $isEnglishLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLocalizationState &&
            const DeepCollectionEquality()
                .equals(other.isEnglishLanguage, isEnglishLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isEnglishLanguage));

  @JsonKey(ignore: true)
  @override
  _$$_AppLocalizationStateCopyWith<_$_AppLocalizationState> get copyWith =>
      __$$_AppLocalizationStateCopyWithImpl<_$_AppLocalizationState>(
          this, _$identity);
}

abstract class _AppLocalizationState implements AppLocalizationState {
  factory _AppLocalizationState({required final bool isEnglishLanguage}) =
      _$_AppLocalizationState;

  @override
  bool get isEnglishLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_AppLocalizationStateCopyWith<_$_AppLocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}
