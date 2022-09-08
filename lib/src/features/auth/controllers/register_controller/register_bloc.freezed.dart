// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  String get username => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get landlineNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)
        $default, {
    required TResult Function(String username, String phoneNumber,
            String? email, String? landlineNumber)
        registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RegisterState value) $default, {
    required TResult Function(Registering value) registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String phoneNumber,
      String? email,
      String? landlineNumber});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? landlineNumber = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      landlineNumber: landlineNumber == freezed
          ? _value.landlineNumber
          : landlineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String phoneNumber,
      String? email,
      String? landlineNumber});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? username = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? landlineNumber = freezed,
  }) {
    return _then(_$_RegisterState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      landlineNumber: landlineNumber == freezed
          ? _value.landlineNumber
          : landlineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  _$_RegisterState(
      {required this.username,
      required this.phoneNumber,
      this.email,
      this.landlineNumber});

  @override
  final String username;
  @override
  final String phoneNumber;
  @override
  final String? email;
  @override
  final String? landlineNumber;

  @override
  String toString() {
    return 'RegisterState(username: $username, phoneNumber: $phoneNumber, email: $email, landlineNumber: $landlineNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.landlineNumber, landlineNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(landlineNumber));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)
        $default, {
    required TResult Function(String username, String phoneNumber,
            String? email, String? landlineNumber)
        registering,
  }) {
    return $default(username, phoneNumber, email, landlineNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
  }) {
    return $default?.call(username, phoneNumber, email, landlineNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(username, phoneNumber, email, landlineNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RegisterState value) $default, {
    required TResult Function(Registering value) registering,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RegisterState implements RegisterState {
  factory _RegisterState(
      {required final String username,
      required final String phoneNumber,
      final String? email,
      final String? landlineNumber}) = _$_RegisterState;

  @override
  String get username;
  @override
  String get phoneNumber;
  @override
  String? get email;
  @override
  String? get landlineNumber;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteringCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisteringCopyWith(
          _$Registering value, $Res Function(_$Registering) then) =
      __$$RegisteringCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String phoneNumber,
      String? email,
      String? landlineNumber});
}

/// @nodoc
class __$$RegisteringCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisteringCopyWith<$Res> {
  __$$RegisteringCopyWithImpl(
      _$Registering _value, $Res Function(_$Registering) _then)
      : super(_value, (v) => _then(v as _$Registering));

  @override
  _$Registering get _value => super._value as _$Registering;

  @override
  $Res call({
    Object? username = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? landlineNumber = freezed,
  }) {
    return _then(_$Registering(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      landlineNumber: landlineNumber == freezed
          ? _value.landlineNumber
          : landlineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Registering implements Registering {
  _$Registering(
      {required this.username,
      required this.phoneNumber,
      this.email,
      this.landlineNumber});

  @override
  final String username;
  @override
  final String phoneNumber;
  @override
  final String? email;
  @override
  final String? landlineNumber;

  @override
  String toString() {
    return 'RegisterState.registering(username: $username, phoneNumber: $phoneNumber, email: $email, landlineNumber: $landlineNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Registering &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.landlineNumber, landlineNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(landlineNumber));

  @JsonKey(ignore: true)
  @override
  _$$RegisteringCopyWith<_$Registering> get copyWith =>
      __$$RegisteringCopyWithImpl<_$Registering>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)
        $default, {
    required TResult Function(String username, String phoneNumber,
            String? email, String? landlineNumber)
        registering,
  }) {
    return registering(username, phoneNumber, email, landlineNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
  }) {
    return registering?.call(username, phoneNumber, email, landlineNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        $default, {
    TResult Function(String username, String phoneNumber, String? email,
            String? landlineNumber)?
        registering,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(username, phoneNumber, email, landlineNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RegisterState value) $default, {
    required TResult Function(Registering value) registering,
  }) {
    return registering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
  }) {
    return registering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(Registering value)? registering,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(this);
    }
    return orElse();
  }
}

abstract class Registering implements RegisterState {
  factory Registering(
      {required final String username,
      required final String phoneNumber,
      final String? email,
      final String? landlineNumber}) = _$Registering;

  @override
  String get username;
  @override
  String get phoneNumber;
  @override
  String? get email;
  @override
  String? get landlineNumber;
  @override
  @JsonKey(ignore: true)
  _$$RegisteringCopyWith<_$Registering> get copyWith =>
      throw _privateConstructorUsedError;
}
