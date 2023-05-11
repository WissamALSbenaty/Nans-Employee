
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_details_model.freezed.dart';
part 'request_details_model.g.dart';

@freezed
class RequestDetailsModel with _$RequestDetailsModel{

  factory RequestDetailsModel({
    required String id,
  })=_RequestDetailsModel;

  factory RequestDetailsModel.fromJson( Map<String,dynamic> data)=>_$RequestDetailsModelFromJson(data);


}