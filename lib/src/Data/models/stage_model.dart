import 'package:freezed_annotation/freezed_annotation.dart';
part 'stage_model.g.dart';

@JsonSerializable()
class StageModel {

  final String id,status,title;

  @JsonKey(name: 'isTurn')
  final bool isCurrentStage;

  StageModel({
    required this.id,
    required this.status,
    required this.title,
    required this.isCurrentStage,
    });

  factory StageModel.fromJson( Map<String,dynamic> data)=>_$StageModelFromJson(data);


}