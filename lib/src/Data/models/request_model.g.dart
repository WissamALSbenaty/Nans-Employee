// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModel _$$_RequestModelFromJson(Map<String, dynamic> json) =>
    _$_RequestModel(
      id: json['id'] as String,
      title: json['title'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      requestStatus: json['requestStatus'] as String,
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      service: ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequestModelToJson(_$_RequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creationDate': instance.creationDate.toIso8601String(),
      'requestStatus': instance.requestStatus,
      'department': instance.department,
      'service': instance.service,
    };
