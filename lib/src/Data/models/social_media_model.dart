
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media_model.freezed.dart';
part 'social_media_model.g.dart';

@freezed
class SocialMediaModel with _$SocialMediaModel{

  factory SocialMediaModel({
    required String phoneNumber,
    required String whatsapp,
    required String instagram,
    required String facebook,
  })=_SocialMediaModel;

  factory SocialMediaModel.fromJson( Map<String,dynamic> data)=>_$SocialMediaModelFromJson(data);


}