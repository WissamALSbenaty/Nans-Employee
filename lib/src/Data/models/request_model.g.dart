// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModel _$$_RequestModelFromJson(Map<String, dynamic> json) =>
    _$_RequestModel(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['createdAt'] as String),
      requestStatus: json['status'] as String,
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      service: ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
      client: ClientModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequestModelToJson(_$_RequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.creationDate.toIso8601String(),
      'status': instance.requestStatus,
      'department': instance.department,
      'service': instance.service,
      'user': instance.client,
    };
