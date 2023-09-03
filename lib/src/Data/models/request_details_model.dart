
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/client_model.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/models/stage_model.dart';

part 'request_details_model.freezed.dart';
part 'request_details_model.g.dart';

@freezed
class RequestDetailsModel with _$RequestDetailsModel{

  factory RequestDetailsModel({
    required String id,
    required String status,
    @JsonKey(name: 'userRequest') required Map<String,dynamic> form,
    required ServiceModel service,
    required DepartmentModel department,
    @JsonKey(name: 'createdAt') required DateTime creationDate,
    required List<StageModel> stages,
    @JsonKey(name:'user') required ClientModel client,
  })=_RequestDetailsModel;

  factory RequestDetailsModel.fromJson( Map<String,dynamic> data)=>_$RequestDetailsModelFromJson(data);


}