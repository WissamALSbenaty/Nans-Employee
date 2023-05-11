// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as String,
      title: json['title'] as String,
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'department': instance.department,
      'price': instance.price,
      'image': instance.image,
    };
