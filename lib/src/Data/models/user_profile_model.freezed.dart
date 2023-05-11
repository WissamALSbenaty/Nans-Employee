// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fatherName => throw _privateConstructorUsedError;
  String get motherName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;
  bool get accountConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call(
      {String email,
      String name,
      String fatherName,
      String motherName,
      String phoneNumber,
      String password,
      GenderType gender,
      bool accountConfirmation});
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? gender = null,
    Object? accountConfirmation = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      accountConfirmation: null == accountConfirmation
          ? _value.accountConfirmation
          : accountConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$_UserProfileModelCopyWith(
          _$_UserProfileModel value, $Res Function(_$_UserProfileModel) then) =
      __$$_UserProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String fatherName,
      String motherName,
      String phoneNumber,
      String password,
      GenderType gender,
      bool accountConfirmation});
}

/// @nodoc
class __$$_UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$_UserProfileModel>
    implements _$$_UserProfileModelCopyWith<$Res> {
  __$$_UserProfileModelCopyWithImpl(
      _$_UserProfileModel _value, $Res Function(_$_UserProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? gender = null,
    Object? accountConfirmation = null,
  }) {
    return _then(_$_UserProfileModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      accountConfirmation: null == accountConfirmation
          ? _value.accountConfirmation
          : accountConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileModel implements _UserProfileModel {
  _$_UserProfileModel(
      {required this.email,
      required this.name,
      required this.fatherName,
      required this.motherName,
      required this.phoneNumber,
      required this.password,
      required this.gender,
      required this.accountConfirmation});

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String fatherName;
  @override
  final String motherName;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final GenderType gender;
  @override
  final bool accountConfirmation;

  @override
  String toString() {
    return 'UserProfileModel(email: $email, name: $name, fatherName: $fatherName, motherName: $motherName, phoneNumber: $phoneNumber, password: $password, gender: $gender, accountConfirmation: $accountConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.accountConfirmation, accountConfirmation) ||
                other.accountConfirmation == accountConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, fatherName,
      motherName, phoneNumber, password, gender, accountConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      __$$_UserProfileModelCopyWithImpl<_$_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  factory _UserProfileModel(
      {required final String email,
      required final String name,
      required final String fatherName,
      required final String motherName,
      required final String phoneNumber,
      required final String password,
      required final GenderType gender,
      required final bool accountConfirmation}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get fatherName;
  @override
  String get motherName;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  GenderType get gender;
  @override
  bool get accountConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
