// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      usedPoints: json['usedPoints'] as int?,
      savingByPoints: json['savingByPoints'] as int?,
      currentPoint: json['currentPoint'] as int?,
      referralCode: json['referralCode'] as String?,
      accountConfirmation: json['accountConfirmation'] as bool,
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'usedPoints': instance.usedPoints,
      'savingByPoints': instance.savingByPoints,
      'currentPoint': instance.currentPoint,
      'referralCode': instance.referralCode,
      'accountConfirmation': instance.accountConfirmation,
    };
