


import 'package:merit_driver/src/Data/repositories/abstract/repository.dart';
import 'package:merit_driver/src/Data/api_helper.dart';
import 'package:merit_driver/src/Data/models/login_model.dart';
import 'package:merit_driver/src/Data/models/register_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


abstract class IAuthRepository extends Repository{

  IAuthRepository(ApiHelper apiHelper):super(apiHelper);

  Future<void> register(RegisterModel registerModel);
  Future<void> refreshToken();
  Future<void> login(LoginModel loginModel);
  Future<void> logout();
  Future<void> deleteAccount({required String userInputPassword});
  Future<void> loginAsGuest();
  Future<void> sendConfirmationCode(String phoneNumber);
  Future<void> checkConfirmationCode({required String phoneNumber,required String code});
  Future<void> resetPassword({required String phoneNumber,required String newPassword});
  Future<void> changePhoneNumber({required String phoneNumber});


  Future<String?>getFirebaseToken()async{
    String? token;
    try{
      token=await FirebaseMessaging.instance.getToken();
    }
    catch(_){}
    return token;

  }

}