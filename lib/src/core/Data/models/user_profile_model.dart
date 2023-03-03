
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel{

  factory UserProfileModel({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required int? usedPoints,
    required int? savingByPoints,
    required int? currentPoint,
    required String? referralCode,
    required bool accountConfirmation,
  })=_UserProfileModel;

  factory UserProfileModel.fromJson( Map<String,dynamic> data)=>_$UserProfileModelFromJson(data);


}