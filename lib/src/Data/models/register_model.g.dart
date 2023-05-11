// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      email: json['email'] as String,
      name: json['name'] as String,
      fatherName: json['fatherName'] as String,
      motherName: json['motherName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      gender: $enumDecode(_$GenderTypeEnumMap, json['gender']),
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'fatherName': instance.fatherName,
      'motherName': instance.motherName,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
    };

const _$GenderTypeEnumMap = {
  GenderType.Male: 'Male',
  GenderType.Female: 'Female',
};
