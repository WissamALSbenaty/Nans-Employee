// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      imagePath: json['imagePath'] as String?,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'creationDate': instance.creationDate.toIso8601String(),
    };
