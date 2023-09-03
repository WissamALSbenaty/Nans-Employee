// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StageModel _$StageModelFromJson(Map<String, dynamic> json) => StageModel(
      id: json['id'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      isCurrentStage: json['isTurn'] as bool,
    );

Map<String, dynamic> _$StageModelToJson(StageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'title': instance.title,
      'isTurn': instance.isCurrentStage,
    };
