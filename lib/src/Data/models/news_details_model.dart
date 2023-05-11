
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_details_model.freezed.dart';
part 'news_details_model.g.dart';

@freezed
class NewsDetailsModel with _$NewsDetailsModel{

  factory NewsDetailsModel({
    required String description,
    required String id,
    required String title,
    @JsonKey(name: 'image') String? imagePath,
    @JsonKey(fromJson: DateTime.parse,name: 'createdAt') required DateTime creationDate
  })=_NewsDetailsModel;

  factory NewsDetailsModel.fromJson( Map<String,dynamic> data)=>_$NewsDetailsModelFromJson(data);


}