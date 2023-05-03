// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['id'] as int,
      englishTitle: json['titleEn'] as String,
      englishBody: json['bodyEn'] as String,
      arabicTitle: json['titleAr'] as String,
      arabicBody: json['bodyAr'] as String,
      notificationDate: DateTime.parse(json['createdOn'] as String),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'titleEn': instance.englishTitle,
      'bodyEn': instance.englishBody,
      'titleAr': instance.arabicTitle,
      'bodyAr': instance.arabicBody,
      'createdOn': instance.notificationDate.toIso8601String(),
      'data': instance.data,
    };
