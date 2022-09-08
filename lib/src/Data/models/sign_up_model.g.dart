// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpModel _$$_SignUpModelFromJson(Map<String, dynamic> json) =>
    _$_SignUpModel(
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      email: json['email'] as String?,
      landlineNumber: json['landlineNumber'] as String?,
    );

Map<String, dynamic> _$$_SignUpModelToJson(_$_SignUpModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'email': instance.email,
      'landlineNumber': instance.landlineNumber,
    };
