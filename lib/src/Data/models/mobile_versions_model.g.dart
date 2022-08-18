// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_versions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MobileVersionModel _$$_MobileVersionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MobileVersionModel(
      androidMinimumVersion: json['androidMinVersion'] as int,
      androidCurrentVersion: json['androidLatestVersion'] as int,
      iosMinimumVersion: json['iosMinVersion'] as String,
      iosCurrentVersion: json['iosLatestVersion'] as String,
    );

Map<String, dynamic> _$$_MobileVersionModelToJson(
        _$_MobileVersionModel instance) =>
    <String, dynamic>{
      'androidMinVersion': instance.androidMinimumVersion,
      'androidLatestVersion': instance.androidCurrentVersion,
      'iosMinVersion': instance.iosMinimumVersion,
      'iosLatestVersion': instance.iosCurrentVersion,
    };
