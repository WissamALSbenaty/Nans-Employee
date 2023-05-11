// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentDetailsModel _$$_DepartmentDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_DepartmentDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      imagePath: json['imagePath'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DepartmentDetailsModelToJson(
        _$_DepartmentDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'services': instance.services,
    };
