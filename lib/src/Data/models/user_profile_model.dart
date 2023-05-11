
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/core/util/enums.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel{

  factory UserProfileModel({
    required String email,
    required String name,
    required String fatherName,
    required String motherName,
    required String phoneNumber,
    required String password,
    required GenderType gender,
    required bool accountConfirmation,
  })=_UserProfileModel;

  factory UserProfileModel.fromJson( Map<String,dynamic> data)=>_$UserProfileModelFromJson(data);


}