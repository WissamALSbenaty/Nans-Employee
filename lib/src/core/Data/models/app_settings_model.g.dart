// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      minimumOrderValue: json['minOrderValue'] as int,
      pointValue: json['pointValue'] as int,
      androidMinimumVersion: (json['androidMinVersion'] as num).toDouble(),
      androidCurrentVersion: (json['androidLatestVersion'] as num).toDouble(),
      iosMinimumVersion: json['iosMinVersion'] as String,
      iosCurrentVersion: json['iosLatestVersion'] as String,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'minOrderValue': instance.minimumOrderValue,
      'pointValue': instance.pointValue,
      'androidMinVersion': instance.androidMinimumVersion,
      'androidLatestVersion': instance.androidCurrentVersion,
      'iosMinVersion': instance.iosMinimumVersion,
      'iosLatestVersion': instance.iosCurrentVersion,
      'currency': instance.currency,
    };
