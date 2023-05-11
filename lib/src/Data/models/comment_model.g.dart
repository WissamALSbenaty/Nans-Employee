// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as String,
      username: json['username'] as String,
      comment: json['comment'] as String,
      vote: (json['vote'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'comment': instance.comment,
      'vote': instance.vote,
    };
