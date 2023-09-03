
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/client_model.dart';
import 'package:nans/src/Data/models/department_model.dart';

import 'service_model.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel{

  factory RequestModel({
    required String id,
    @JsonKey(name:'createdAt',fromJson: DateTime.parse) required DateTime creationDate,
    @JsonKey(name:'status') required String requestStatus,
    required DepartmentModel department,
    required ServiceModel service,
    @JsonKey(name:'user') required ClientModel client,
  })=_RequestModel;

  factory RequestModel.fromJson( Map<String,dynamic> data)=>_$RequestModelFromJson(data);


}