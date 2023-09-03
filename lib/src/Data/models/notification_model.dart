import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {

  final String id,title,body;

  @JsonKey(name:'createdAt')
  final DateTime creationDate;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.creationDate,
  });

  factory NotificationModel.fromJson( Map<String,dynamic> data)=>_$NotificationModelFromJson(data);


}