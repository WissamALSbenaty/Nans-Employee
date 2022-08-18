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
  String get firstName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get referralCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)
        $default, {
    required TResult Function(String firstName, String phoneNumber,
            String lastName, String password, String referralCode)
        registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        registering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
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
      {String firstName,
      String phoneNumber,
      String lastName,
      String password,
      String referralCode});
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
    Object? firstName = freezed,
    Object? phoneNumber = freezed,
    Object? lastName = freezed,
    Object? password = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String firstName,
      String phoneNumber,
      String lastName,
      String password,
      String referralCode});
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
    Object? firstName = freezed,
    Object? phoneNumber = freezed,
    Object? lastName = freezed,
    Object? password = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_$_RegisterState(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  _$_RegisterState(
      {required this.firstName,
      required this.phoneNumber,
      required this.lastName,
      required this.password,
      required this.referralCode});

  @override
  final String firstName;
  @override
  final String phoneNumber;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String referralCode;

  @override
  String toString() {
    return 'RegisterState(firstName: $firstName, phoneNumber: $phoneNumber, lastName: $lastName, password: $password, referralCode: $referralCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(referralCode));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)
        $default, {
    required TResult Function(String firstName, String phoneNumber,
            String lastName, String password, String referralCode)
        registering,
  }) {
    return $default(firstName, phoneNumber, lastName, password, referralCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        registering,
  }) {
    return $default?.call(
        firstName, phoneNumber, lastName, password, referralCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        registering,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(firstName, phoneNumber, lastName, password, referralCode);
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
      {required final String firstName,
      required final String phoneNumber,
      required final String lastName,
      required final String password,
      required final String referralCode}) = _$_RegisterState;

  @override
  String get firstName;
  @override
  String get phoneNumber;
  @override
  String get lastName;
  @override
  String get password;
  @override
  String get referralCode;
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
      {String firstName,
      String phoneNumber,
      String lastName,
      String password,
      String referralCode});
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
    Object? firstName = freezed,
    Object? phoneNumber = freezed,
    Object? lastName = freezed,
    Object? password = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_$Registering(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Registering implements Registering {
  _$Registering(
      {required this.firstName,
      required this.phoneNumber,
      required this.lastName,
      required this.password,
      required this.referralCode});

  @override
  final String firstName;
  @override
  final String phoneNumber;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String referralCode;

  @override
  String toString() {
    return 'RegisterState.registering(firstName: $firstName, phoneNumber: $phoneNumber, lastName: $lastName, password: $password, referralCode: $referralCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Registering &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(referralCode));

  @JsonKey(ignore: true)
  @override
  _$$RegisteringCopyWith<_$Registering> get copyWith =>
      __$$RegisteringCopyWithImpl<_$Registering>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)
        $default, {
    required TResult Function(String firstName, String phoneNumber,
            String lastName, String password, String referralCode)
        registering,
  }) {
    return registering(
        firstName, phoneNumber, lastName, password, referralCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        registering,
  }) {
    return registering?.call(
        firstName, phoneNumber, lastName, password, referralCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        $default, {
    TResult Function(String firstName, String phoneNumber, String lastName,
            String password, String referralCode)?
        registering,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(
          firstName, phoneNumber, lastName, password, referralCode);
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
      {required final String firstName,
      required final String phoneNumber,
      required final String lastName,
      required final String password,
      required final String referralCode}) = _$Registering;

  @override
  String get firstName;
  @override
  String get phoneNumber;
  @override
  String get lastName;
  @override
  String get password;
  @override
  String get referralCode;
  @override
  @JsonKey(ignore: true)
  _$$RegisteringCopyWith<_$Registering> get copyWith =>
      throw _privateConstructorUsedError;
}
