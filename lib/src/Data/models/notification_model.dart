import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel{
  const NotificationModel._();

  factory NotificationModel({
    required int id,
    @JsonKey(name: 'titleEn')  required String englishTitle,
    @JsonKey(name: 'bodyEn')   required String englishBody,
    @JsonKey(name: 'titleAr')  required String arabicTitle,
    @JsonKey(name: 'bodyAr')   required String arabicBody,
    @JsonKey(name: 'createdOn',fromJson:DateTime.parse,) required DateTime notificationDate,
    required String data,

  })=_NotificationModel;

  factory NotificationModel.fromJson(Map<String,dynamic> data)=>_$NotificationModelFromJson(data);

}