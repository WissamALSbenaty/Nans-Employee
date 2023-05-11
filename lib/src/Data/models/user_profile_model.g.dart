// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      email: json['email'] as String,
      name: json['name'] as String,
      fatherName: json['fatherName'] as String,
      motherName: json['motherName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      gender: $enumDecode(_$GenderTypeEnumMap, json['gender']),
      accountConfirmation: json['accountConfirmation'] as bool,
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'fatherName': instance.fatherName,
      'motherName': instance.motherName,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
      'accountConfirmation': instance.accountConfirmation,
    };

const _$GenderTypeEnumMap = {
  GenderType.Male: 'Male',
  GenderType.Female: 'Female',
};
