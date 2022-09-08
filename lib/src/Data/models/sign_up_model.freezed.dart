// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) {
  return _SignUpModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpModel {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get landlineNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) then) =
      _$SignUpModelCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String username,
      String? email,
      String? landlineNumber});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res> implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._value, this._then);

  final SignUpModel _value;
  // ignore: unused_field
  final $Res Function(SignUpModel) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? landlineNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SignUpModelCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$$_SignUpModelCopyWith(
          _$_SignUpModel value, $Res Function(_$_SignUpModel) then) =
      __$$_SignUpModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber,
      String username,
      String? email,
      String? landlineNumber});
}

/// @nodoc
class __$$_SignUpModelCopyWithImpl<$Res> extends _$SignUpModelCopyWithImpl<$Res>
    implements _$$_SignUpModelCopyWith<$Res> {
  __$$_SignUpModelCopyWithImpl(
      _$_SignUpModel _value, $Res Function(_$_SignUpModel) _then)
      : super(_value, (v) => _then(v as _$_SignUpModel));

  @override
  _$_SignUpModel get _value => super._value as _$_SignUpModel;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? landlineNumber = freezed,
  }) {
    return _then(_$_SignUpModel(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$_SignUpModel implements _SignUpModel {
  _$_SignUpModel(
      {required this.phoneNumber,
      required this.username,
      this.email,
      this.landlineNumber});

  factory _$_SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpModelFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? landlineNumber;

  @override
  String toString() {
    return 'SignUpModel(phoneNumber: $phoneNumber, username: $username, email: $email, landlineNumber: $landlineNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpModel &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.landlineNumber, landlineNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(landlineNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpModelCopyWith<_$_SignUpModel> get copyWith =>
      __$$_SignUpModelCopyWithImpl<_$_SignUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpModelToJson(
      this,
    );
  }
}

abstract class _SignUpModel implements SignUpModel {
  factory _SignUpModel(
      {required final String phoneNumber,
      required final String username,
      final String? email,
      final String? landlineNumber}) = _$_SignUpModel;

  factory _SignUpModel.fromJson(Map<String, dynamic> json) =
      _$_SignUpModel.fromJson;

  @override
  String get phoneNumber;
  @override
  String get username;
  @override
  String? get email;
  @override
  String? get landlineNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpModelCopyWith<_$_SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
