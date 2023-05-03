// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      androidMinimumVersion: json['androidMinVersion'] as String,
      androidCurrentVersion: json['androidLatestVersion'] as String,
      iosMinimumVersion: json['iosMinVersion'] as String,
      iosCurrentVersion: json['iosLatestVersion'] as String,
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'androidMinVersion': instance.androidMinimumVersion,
      'androidLatestVersion': instance.androidCurrentVersion,
      'iosMinVersion': instance.iosMinimumVersion,
      'iosLatestVersion': instance.iosCurrentVersion,
    };
