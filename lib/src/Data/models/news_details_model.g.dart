// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDetailsModel _$$_NewsDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_NewsDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imagePath: json['imagePath'] as String?,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$_NewsDetailsModelToJson(_$_NewsDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imagePath': instance.imagePath,
      'creationDate': instance.creationDate.toIso8601String(),
    };
