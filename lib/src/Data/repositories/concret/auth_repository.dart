
import 'dart:io';

import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/local_database_tables/app_database.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/login_response_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/models/response_model.dart';
import 'package:nans/src/Data/models/user_profile_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{

  AuthRepository(super.localDatabase,super.apiHelper);

  @override
  Future<LoginResponseModel> register(RegisterModel registerModel)async{
    try{

        ResponseModel responseModel= await apiHelper.post(url:  'Auth/Register',isAuthenticated: false,
        formData: {
          ...registerModel.toJson()
        });

        LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(responseModel.data);
        apiHelper.setToken(loginResponseModel.token);
        await setAuthLocalData(name:  loginResponseModel.user.name,email: loginResponseModel.user.email,
          fatherName: loginResponseModel.user.fatherName,motherName: loginResponseModel.user.motherName,
          phoneNumber: registerModel.phoneNumber,token: loginResponseModel.token,
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
          'Phone':loginModel.email,
          'Password':loginModel.password,
          'FireBaseToken': firebaseToken??'',
        });
    LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(response.data);

    await setAuthLocalData(name:  loginResponseModel.user.name,email: loginResponseModel.user.email,
        fatherName: loginResponseModel.user.fatherName,motherName: loginResponseModel.user.motherName,
       phoneNumber: loginResponseModel.user.phoneNumber,token: loginResponseModel.token, password: loginModel.password,);

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
  Future<void> loginAsGuest() async{
    await setAuthLocalData(name:'',motherName:'',fatherName: '', email:'', phoneNumber:'', password:'', token:'');
  }

  @override
  Future<void> sendConfirmationCode({required String email})async{
    throw UnimplementedError();
  }



  @override
  Future<void> resetPassword({required String email,required String newPassword,required String otpCode,}) async{
    throw UnimplementedError();
  }


  @override
  Future<void> changePassword({required String oldPassword, required String newPassword})async {
    User currentUser =await localDatabase.getUser();
    await apiHelper.post(url: 'Auth/UpdateProfile', formData: {
      'OldPassword':oldPassword,
      'NewPassword':newPassword,
    });
    await setAuthLocalData(name:currentUser.name,email: currentUser.email,
        phoneNumber:currentUser.phoneNumber,fatherName:currentUser.fatherName ,motherName:currentUser.motherName ,
        password:newPassword,
        token:currentUser.token,);
  }

  @override
  Future<UserProfileModel> changeEmail({required String email})async {
    User currentUser=await localDatabase.getUser();
    ResponseModel responseModel= await apiHelper.post(url: 'Auth/UpdateProfile', formData: {
      'Phone':email,
    });
    await setAuthLocalData(name:currentUser.name,phoneNumber: currentUser.phoneNumber,
        email:email,fatherName:currentUser.fatherName ,motherName:currentUser.motherName ,
        password:currentUser.password,
        token:currentUser.token,);
    return UserProfileModel.fromJson(responseModel.data);
  }

  @override
  Future<UserProfileModel> getUserProfile()async {
    User currentUser=await localDatabase.getUser();
    ResponseModel responseModel =await apiHelper.get(url: 'Auth/Profile', parameters: {});
    Map<String,dynamic> data=responseModel.data;
    UserProfileModel ret=  UserProfileModel.fromJson(data);
    await setAuthLocalData(name:ret.name,email: ret.email,
      phoneNumber:ret.phoneNumber,fatherName: ret.fatherName,motherName: ret.motherName,
        password:currentUser.password,
        token:currentUser.token,);

    return ret;
  }

  @override
  Future<void> checkConfirmationCode({required String email, required String otpCode})async {
    await apiHelper.post(url: 'Auth/CheckConfirmationCode', formData:  {
      'Code':otpCode,
      'EmailOrPhone':email,
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



}