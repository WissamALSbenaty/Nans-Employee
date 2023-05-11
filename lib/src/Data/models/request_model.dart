
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/service_model.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel{

  factory RequestModel({
    required String id,
    required String title,
    @JsonKey(fromJson: DateTime.parse) required DateTime creationDate,
    required String requestStatus,
    required DepartmentModel department,
    required ServiceModel service,
  })=_RequestModel;

  factory RequestModel.fromJson( Map<String,dynamic> data)=>_$RequestModelFromJson(data);


}