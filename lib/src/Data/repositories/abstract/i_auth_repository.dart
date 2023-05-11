


import 'package:nans/src/Data/local_database_tables/app_database.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/login_response_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/models/user_profile_model.dart';
import 'package:nans/src/Data/repositories/abstract/repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


abstract class IAuthRepository extends Repository{

  final AppDatabase localDatabase;
  IAuthRepository(super.apiHelper, this.localDatabase);

  Future<LoginResponseModel> register(RegisterModel registerModel);
  Future<LoginResponseModel> login(LoginModel loginModel);
  Future<void> loginAsGuest();
  Future<void> logout();

  Future<void> sendConfirmationCode({required String email});
  Future<void> checkConfirmationCode({required String email,required String otpCode});

  Future<UserProfileModel> changeEmail({required String email});
  Future<UserProfileModel> getUserProfile();

  Future<void> resetPassword({required String email,required String otpCode,required String newPassword,});
  Future<void> changePassword({required String oldPassword,required String newPassword,});

  Future<void> updateFirebaseToken();

  Future<String?>getFirebaseToken()async{
    String? token;
    try{
      token=await FirebaseMessaging.instance.getToken();
    }
    catch(_){}
    return token;
  }
    Future<void> setAuthLocalData({required String name,required String fatherName,required String motherName,
      required String email, required String phoneNumber, required String password, required String token,
    })async{
      apiHelper.setToken(token);

      await localDatabase.insertUser(User(name: name,phoneNumber:phoneNumber,email: email,
          fatherName: fatherName,motherName: motherName, token: token,password: password));
    }

}