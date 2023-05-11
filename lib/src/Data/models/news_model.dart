
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel{

  factory NewsModel({
    required String id,
    required String title,
   @JsonKey(name: 'image') String? imagePath,
   @JsonKey(fromJson: DateTime.parse,name: 'createdAt') required DateTime creationDate
  })=_NewsModel;

  factory NewsModel.fromJson( Map<String,dynamic> data)=>_$NewsModelFromJson(data);


}