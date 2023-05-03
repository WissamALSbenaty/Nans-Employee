
import 'dart:io';

import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/Data/api_helper.dart';
import 'package:etloob/src/Data/local_database_tables/app_database.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/Data/models/login_response_model.dart';
import 'package:etloob/src/Data/models/register_model.dart';
import 'package:etloob/src/Data/models/response_model.dart';
import 'package:etloob/src/Data/models/user_profile_model.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{

  final AppDatabase localDatabase;
  AuthRepository(this.localDatabase,ApiHelper apiHelper,):super(apiHelper);

  @override
  Future<LoginResponseModel> register(RegisterModel registerModel)async{
    try{
        String? firebaseToken=await getFirebaseToken();

        ResponseModel responseModel= await apiHelper.post(url:  'Auth/Register',isAuthenticated: false,
        formData:{
          'LastName':registerModel.lastName,
          'FirstName':registerModel.firstName,
          'Password':registerModel.password,
          'ReferralCode':registerModel.referralCode,
          'Phone':registerModel.phoneNumber,
          'FireBaseToken':firebaseToken??'',
          "DeviceType":Platform.isIOS? "IOS":"Android",
          "UserType":"Client",
        });

        LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(responseModel.data);
        apiHelper.setToken(loginResponseModel.token);
        await setAuthLocalData(firstName:  loginResponseModel.user.firstName,lastName: loginResponseModel.user.lastName,

          phoneNumber: registerModel.phoneNumber,token: loginResponseModel.token,
          referralCode: loginResponseModel.user.referralCode??"",
          password: registerModel.password,);
        return loginResponseModel;
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<LoginResponseModel> login(LoginModel loginModel)async{

    try{
        String? firebaseToken=await getFirebaseToken();
      ResponseModel response=await apiHelper.post(url:  'Auth/Login',isAuthenticated: false,
        formData:{
          'Phone':loginModel.phoneNumber,
          'Password':loginModel.password,
          "DeviceType":Platform.isIOS? "IOS":"Android",
          'FireBaseToken': firebaseToken??'',
        });
    LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(response.data);

    await setAuthLocalData(firstName:  loginResponseModel.user.firstName,lastName: loginResponseModel.user.lastName,
       phoneNumber: loginModel.phoneNumber,token: loginResponseModel.token,referralCode: loginResponseModel.user.referralCode??"",
        password: loginModel.password,);

    return loginResponseModel;
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<bool> checkIfPhoneExist(String phoneNumber) async{
    ResponseModel responseModel=await apiHelper.get(url: 'Auth/CheckIfExistPhoneNumber', parameters:{
      'PhoneNumber':phoneNumber,
      "UserType":"Client"
    });

    return responseModel.data as bool;

  }

  @override
  Future<void> loginAsGuest() async{
    await setAuthLocalData(firstName:'', lastName:'', phoneNumber:'', password:'', token:'', referralCode:'');
  }


  @override
  Future<void> deleteAccount({required String userInputPassword})async{

    await Future.wait( [
      FirebaseMessaging.instance.deleteToken(),
      localDatabase.clearDatabase(),
      apiHelper.post(url: 'Auth/DeleteMyAccount', formData: {'Password':userInputPassword})]);
    apiHelper.setToken('');
  }

  @override
  Future<void> sendConfirmationCode({required String phoneNumber,required VerificationReason verificationReason})async{
     await apiHelper.post(url: 'Auth/SendConfirmationCode', formData:  {
      'EmailOrPhone':phoneNumber,
       'UserType':'Client',
       'VerificationType':verificationReason.name,
       'VerificationMethod':'ByPhone',

    });
  }



  Future<void> setAuthLocalData(
      {required String firstName,
      required String lastName,
      required String phoneNumber,
      required String password,
      required String token,
      required String referralCode,
      })async{
    apiHelper.setToken(token);

    await localDatabase.insertUser(User(firstName: firstName,phoneNumber:phoneNumber,isLoggedInBefore: true,
        lastName: lastName,referralCode: referralCode,token: token,password: password));
  }

  @override
  Future<void> resetPassword({required String phoneNumber,required String newPassword,required String otpCode,}) async{
    await apiHelper.post(url: 'Auth/ResetPassword', formData: {
      'EmailOrPhone':phoneNumber,
      'NewPassword':newPassword,
      'Method':'ByPhone'
    });
  }


  @override
  Future<void> changePassword({required String oldPassword, required String newPassword})async {
    User currentUser =await localDatabase.getUser();
    await apiHelper.post(url: 'Auth/UpdateProfile', formData: {
      'OldPassword':oldPassword,
      'NewPassword':newPassword,
    });
    await setAuthLocalData(firstName:currentUser. firstName,
    lastName:currentUser.lastName,
        phoneNumber:currentUser.phoneNumber,
        password:newPassword,
        token:currentUser.token,
        referralCode:currentUser.referralCode);
  }

  @override
  Future<UserProfileModel> changePhoneNumber({required String phoneNumber})async {
    User currentUser=await localDatabase.getUser();
    ResponseModel responseModel= await apiHelper.post(url: 'Auth/UpdateProfile', formData: {
      'Phone':phoneNumber,
    });
    await setAuthLocalData(firstName:currentUser. firstName,
        lastName:currentUser.lastName,
        phoneNumber:phoneNumber,
        password:currentUser.password,
        token:currentUser.token,
        referralCode:currentUser.referralCode);
    return UserProfileModel.fromJson(responseModel.data);
  }

  @override
  Future<UserProfileModel> getUserProfile()async {
    User currentUser=await localDatabase.getUser();
    ResponseModel responseModel =await apiHelper.get(url: 'Auth/Profile', parameters: {});
    Map<String,dynamic> data=responseModel.data;
    UserProfileModel ret=  UserProfileModel.fromJson(data);
    await setAuthLocalData(firstName:ret.firstName,
        lastName:ret.lastName,
        phoneNumber:ret.phoneNumber,
        password:currentUser.password,
        token:currentUser.token,
        referralCode:ret.referralCode??"");

    return ret;
  }

  @override
  Future<void> checkConfirmationCode({required String phoneNumber, required String otpCode, required VerificationReason verificationReason})async {
    await apiHelper.post(url: 'Auth/CheckConfirmationCode', formData:  {
      'Code':otpCode,
      'EmailOrPhone':phoneNumber,
      'VerificationType':verificationReason.name,
      'VerificationMethod':'ByPhone',

    });
  }

  @override
  Future<void> updateFirebaseToken() async{
    String? firebaseToken=await getFirebaseToken();
    if(firebaseToken!=null) {
      await apiHelper.post(url: 'Auth/AddOrUpdateFireBaseToken', formData: {
      'FireBaseToken':firebaseToken,
      'DeviceType':Platform.isIOS? "IOS":"Android",
    });
    }
  }

  @override
  Future<void> logout()async{
    try{
      String? firebaseToken=await getFirebaseToken();
      await apiHelper.post(url: 'Auth/Logout', formData: {
        'FireBaseToken':firebaseToken,
      });
      await FirebaseMessaging.instance.deleteToken();
      await localDatabase.clearDatabase();

      apiHelper.setToken('');
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<void> refreshToken()async {
  }




}