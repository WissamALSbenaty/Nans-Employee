// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceDetailsModel _$$_ServiceDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
      description: json['description'] as String,
      votes: (json['votes'] as num).toDouble(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServiceDetailsModelToJson(
        _$_ServiceDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'department': instance.department,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'votes': instance.votes,
      'comments': instance.comments,
    };
