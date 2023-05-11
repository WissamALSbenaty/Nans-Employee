
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel{

  factory DepartmentModel({
    required String id,
    required String title,
             String? imagePath,
  })=_DepartmentModel;

  factory DepartmentModel.fromJson( Map<String,dynamic> data)=>_$DepartmentModelFromJson(data);


}