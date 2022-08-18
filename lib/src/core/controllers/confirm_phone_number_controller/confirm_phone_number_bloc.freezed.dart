// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmPhoneNumberState {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) submitting,
    required TResult Function(String code) verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Verifying value) verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmPhoneNumberStateCopyWith<ConfirmPhoneNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPhoneNumberStateCopyWith<$Res> {
  factory $ConfirmPhoneNumberStateCopyWith(ConfirmPhoneNumberState value,
          $Res Function(ConfirmPhoneNumberState) then) =
      _$ConfirmPhoneNumberStateCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$ConfirmPhoneNumberStateCopyWithImpl<$Res>
    implements $ConfirmPhoneNumberStateCopyWith<$Res> {
  _$ConfirmPhoneNumberStateCopyWithImpl(this._value, this._then);

  final ConfirmPhoneNumberState _value;
  // ignore: unused_field
  final $Res Function(ConfirmPhoneNumberState) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SubmittingCopyWith<$Res>
    implements $ConfirmPhoneNumberStateCopyWith<$Res> {
  factory _$$SubmittingCopyWith(
          _$Submitting value, $Res Function(_$Submitting) then) =
      __$$SubmittingCopyWithImpl<$Res>;
  @override
  $Res call({String code});
}

/// @nodoc
class __$$SubmittingCopyWithImpl<$Res>
    extends _$ConfirmPhoneNumberStateCopyWithImpl<$Res>
    implements _$$SubmittingCopyWith<$Res> {
  __$$SubmittingCopyWithImpl(
      _$Submitting _value, $Res Function(_$Submitting) _then)
      : super(_value, (v) => _then(v as _$Submitting));

  @override
  _$Submitting get _value => super._value as _$Submitting;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$Submitting(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Submitting implements Submitting {
  _$Submitting({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmPhoneNumberState.submitting(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Submitting &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$SubmittingCopyWith<_$Submitting> get copyWith =>
      __$$SubmittingCopyWithImpl<_$Submitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) submitting,
    required TResult Function(String code) verifying,
  }) {
    return submitting(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
  }) {
    return submitting?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Verifying value) verifying,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class Submitting implements ConfirmPhoneNumberState {
  factory Submitting({required final String code}) = _$Submitting;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$SubmittingCopyWith<_$Submitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingCopyWith<$Res>
    implements $ConfirmPhoneNumberStateCopyWith<$Res> {
  factory _$$VerifyingCopyWith(
          _$Verifying value, $Res Function(_$Verifying) then) =
      __$$VerifyingCopyWithImpl<$Res>;
  @override
  $Res call({String code});
}

/// @nodoc
class __$$VerifyingCopyWithImpl<$Res>
    extends _$ConfirmPhoneNumberStateCopyWithImpl<$Res>
    implements _$$VerifyingCopyWith<$Res> {
  __$$VerifyingCopyWithImpl(
      _$Verifying _value, $Res Function(_$Verifying) _then)
      : super(_value, (v) => _then(v as _$Verifying));

  @override
  _$Verifying get _value => super._value as _$Verifying;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$Verifying(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Verifying implements Verifying {
  _$Verifying({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmPhoneNumberState.verifying(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Verifying &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$VerifyingCopyWith<_$Verifying> get copyWith =>
      __$$VerifyingCopyWithImpl<_$Verifying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) submitting,
    required TResult Function(String code) verifying,
  }) {
    return verifying(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
  }) {
    return verifying?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? submitting,
    TResult Function(String code)? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Verifying value) verifying,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
  }) {
    return verifying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }
}

abstract class Verifying implements ConfirmPhoneNumberState {
  factory Verifying({required final String code}) = _$Verifying;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$VerifyingCopyWith<_$Verifying> get copyWith =>
      throw _privateConstructorUsedError;
}
