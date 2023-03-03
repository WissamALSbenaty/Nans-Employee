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
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int? get usedPoints => throw _privateConstructorUsedError;
  int? get savingByPoints => throw _privateConstructorUsedError;
  int? get currentPoint => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
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
      {String firstName,
      String lastName,
      String phoneNumber,
      int? usedPoints,
      int? savingByPoints,
      int? currentPoint,
      String? referralCode,
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
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? usedPoints = freezed,
    Object? savingByPoints = freezed,
    Object? currentPoint = freezed,
    Object? referralCode = freezed,
    Object? accountConfirmation = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      usedPoints: freezed == usedPoints
          ? _value.usedPoints
          : usedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      savingByPoints: freezed == savingByPoints
          ? _value.savingByPoints
          : savingByPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String firstName,
      String lastName,
      String phoneNumber,
      int? usedPoints,
      int? savingByPoints,
      int? currentPoint,
      String? referralCode,
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
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? usedPoints = freezed,
    Object? savingByPoints = freezed,
    Object? currentPoint = freezed,
    Object? referralCode = freezed,
    Object? accountConfirmation = null,
  }) {
    return _then(_$_UserProfileModel(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      usedPoints: freezed == usedPoints
          ? _value.usedPoints
          : usedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      savingByPoints: freezed == savingByPoints
          ? _value.savingByPoints
          : savingByPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.usedPoints,
      required this.savingByPoints,
      required this.currentPoint,
      required this.referralCode,
      required this.accountConfirmation});

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final int? usedPoints;
  @override
  final int? savingByPoints;
  @override
  final int? currentPoint;
  @override
  final String? referralCode;
  @override
  final bool accountConfirmation;

  @override
  String toString() {
    return 'UserProfileModel(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, usedPoints: $usedPoints, savingByPoints: $savingByPoints, currentPoint: $currentPoint, referralCode: $referralCode, accountConfirmation: $accountConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.usedPoints, usedPoints) ||
                other.usedPoints == usedPoints) &&
            (identical(other.savingByPoints, savingByPoints) ||
                other.savingByPoints == savingByPoints) &&
            (identical(other.currentPoint, currentPoint) ||
                other.currentPoint == currentPoint) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.accountConfirmation, accountConfirmation) ||
                other.accountConfirmation == accountConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      phoneNumber,
      usedPoints,
      savingByPoints,
      currentPoint,
      referralCode,
      accountConfirmation);

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
      {required final String firstName,
      required final String lastName,
      required final String phoneNumber,
      required final int? usedPoints,
      required final int? savingByPoints,
      required final int? currentPoint,
      required final String? referralCode,
      required final bool accountConfirmation}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  int? get usedPoints;
  @override
  int? get savingByPoints;
  @override
  int? get currentPoint;
  @override
  String? get referralCode;
  @override
  bool get accountConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
