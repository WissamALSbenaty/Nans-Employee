// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDetailsModel _$$_RequestDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestDetailsModel(
      id: json['id'] as String,
      status: json['status'] as String,
      form: json['userRequest'] as Map<String, dynamic>,
      service: ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      creationDate: DateTime.parse(json['createdAt'] as String),
      stages: (json['stages'] as List<dynamic>)
          .map((e) => StageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      client: ClientModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequestDetailsModelToJson(
        _$_RequestDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userRequest': instance.form,
      'service': instance.service,
      'department': instance.department,
      'createdAt': instance.creationDate.toIso8601String(),
      'stages': instance.stages,
      'user': instance.client,
    };
