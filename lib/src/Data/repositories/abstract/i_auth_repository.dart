


import 'package:etloob/src/Data/api_helper.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/Data/models/login_response_model.dart';
import 'package:etloob/src/Data/models/register_model.dart';
import 'package:etloob/src/Data/models/user_profile_model.dart';
import 'package:etloob/src/Data/repositories/abstract/repository.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


abstract class IAuthRepository extends Repository{

  IAuthRepository(ApiHelper apiHelper):super(apiHelper);

  Future<LoginResponseModel> register(RegisterModel registerModel);
  Future<LoginResponseModel> login(LoginModel loginModel);
  Future<void> deleteAccount({required String userInputPassword});
  Future<void> loginAsGuest();
  Future<void> logout();

  Future<void> sendConfirmationCode({required String phoneNumber,required VerificationReason verificationReason});
  Future<void> checkConfirmationCode({required String phoneNumber,required String otpCode,required VerificationReason verificationReason});

  Future<UserProfileModel> changePhoneNumber({required String phoneNumber});
  Future<bool> checkIfPhoneExist(String phoneNumber);
  Future<UserProfileModel> getUserProfile();

  Future<void> resetPassword({required String phoneNumber,required String otpCode,required String newPassword,});
  Future<void> changePassword({required String oldPassword,required String newPassword,});

  Future<void> updateFirebaseToken();
  Future<void> refreshToken();

  Future<String?>getFirebaseToken()async{
    String? token;
    try{
      token=await FirebaseMessaging.instance.getToken();
    }
    catch(_){}
    return token;
  }

}