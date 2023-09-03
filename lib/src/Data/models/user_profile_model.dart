
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/department_model.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel{

  factory UserProfileModel({
    required String email,
    required String name,
    required String phoneNumber,
    required DepartmentModel department,
  })=_UserProfileModel;

  factory UserProfileModel.fromJson( Map<String,dynamic> data)=>_$UserProfileModelFromJson(data);


}