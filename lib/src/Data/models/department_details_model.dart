
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/service_model.dart';

part 'department_details_model.freezed.dart';
part 'department_details_model.g.dart';

@freezed
class DepartmentDetailsModel with _$DepartmentDetailsModel{

  factory DepartmentDetailsModel({
    required String id,
    required String title,
    String? imagePath,
    required List<ServiceModel> services
  })=_DepartmentDetailsModel;

  factory DepartmentDetailsModel.fromJson( Map<String,dynamic> data)=>_$DepartmentDetailsModelFromJson(data);


}